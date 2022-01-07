
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cuda_softc {int sc_rtc; int adb_bus; int sc_state; int * sc_pkts; int sc_freeq; int sc_outq; int sc_inq; scalar_t__ sc_autopoll; scalar_t__ sc_polling; scalar_t__ sc_waiting; scalar_t__ sc_received; scalar_t__ sc_sent; int sc_mutex; int * sc_irq; scalar_t__ sc_irqrid; int * sc_memr; scalar_t__ sc_memrid; int sc_ih; int sc_dev; } ;
typedef scalar_t__ phandle_t ;
typedef int name ;
typedef int device_t ;


 int CUDA_IDLE ;
 int volatile CUDA_MAXPACKETS ;
 int CUDA_NOTREADY ;
 int DELAY (int) ;
 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,struct cuda_softc*,int ) ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int RF_ACTIVE ;
 int SHUTDOWN_PRI_LAST ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,int *,int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,int ,int *) ;
 int clock_register (int ,int) ;
 int cuda_clear_tip (struct cuda_softc*) ;
 int cuda_idle (struct cuda_softc*) ;
 int cuda_intr ;
 int cuda_read_reg (struct cuda_softc*,int ) ;
 int cuda_shutdown ;
 int cuda_tip (struct cuda_softc*) ;
 int cuda_toggle_ack (struct cuda_softc*) ;
 int cuda_write_reg (struct cuda_softc*,int ,int) ;
 int device_add_child (int ,char*,int) ;
 struct cuda_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int memset (char*,int ,int) ;
 int mtx_init (int *,char*,int *,int) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int pkt_q ;
 int shutdown_final ;
 scalar_t__ strncmp (char*,char*,int) ;
 int vACR ;
 int vDirB ;
 int vIER ;
 int vSR ;
 int vSR_OUT ;

__attribute__((used)) static int
cuda_attach(device_t dev)
{
 struct cuda_softc *sc;

 volatile int i;
 uint8_t reg;
 phandle_t node,child;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 sc->sc_memrid = 0;
 sc->sc_memr = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->sc_memrid, RF_ACTIVE);

 if (sc->sc_memr == ((void*)0)) {
  device_printf(dev, "Could not alloc mem resource!\n");
  return (ENXIO);
 }

 sc->sc_irqrid = 0;
 sc->sc_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->sc_irqrid,
             RF_ACTIVE);
        if (sc->sc_irq == ((void*)0)) {
                device_printf(dev, "could not allocate interrupt\n");
                bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_memrid,
                    sc->sc_memr);
                return (ENXIO);
        }

 if (bus_setup_intr(dev, sc->sc_irq, INTR_TYPE_MISC | INTR_MPSAFE
     | INTR_ENTROPY, ((void*)0), cuda_intr, dev, &sc->sc_ih) != 0) {
                device_printf(dev, "could not setup interrupt\n");
                bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_memrid,
                    sc->sc_memr);
                bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irqrid,
                    sc->sc_irq);
                return (ENXIO);
        }

 mtx_init(&sc->sc_mutex,"cuda",((void*)0),MTX_DEF | MTX_RECURSE);

 sc->sc_sent = 0;
 sc->sc_received = 0;
 sc->sc_waiting = 0;
 sc->sc_polling = 0;
 sc->sc_state = CUDA_NOTREADY;
 sc->sc_autopoll = 0;
 sc->sc_rtc = -1;

 STAILQ_INIT(&sc->sc_inq);
 STAILQ_INIT(&sc->sc_outq);
 STAILQ_INIT(&sc->sc_freeq);

 for (i = 0; i < CUDA_MAXPACKETS; i++)
  STAILQ_INSERT_TAIL(&sc->sc_freeq, &sc->sc_pkts[i], pkt_q);



 reg = cuda_read_reg(sc, vDirB);
 reg |= 0x30;
 cuda_write_reg(sc, vDirB, reg);

 reg = cuda_read_reg(sc, vDirB);
 reg &= 0xf7;
 cuda_write_reg(sc, vDirB, reg);

 reg = cuda_read_reg(sc, vACR);
 reg &= ~vSR_OUT;
 cuda_write_reg(sc, vACR, reg);

 cuda_write_reg(sc, vACR, (cuda_read_reg(sc, vACR) | 0x0c) & ~0x10);

 sc->sc_state = CUDA_IDLE;

 cuda_write_reg(sc, vIER, 0x84);

 cuda_idle(sc);



 i = cuda_read_reg(sc, vSR);
 cuda_write_reg(sc, vIER, 0x04);
 cuda_idle(sc);
 DELAY(150);
 cuda_tip(sc);
 DELAY(150);
 cuda_toggle_ack(sc);
 DELAY(150);
 cuda_clear_tip(sc);
 DELAY(150);
 cuda_idle(sc);
 i = cuda_read_reg(sc, vSR);
 cuda_write_reg(sc, vIER, 0x84);


 node = ofw_bus_get_node(dev);

 for (child = OF_child(node); child != 0; child = OF_peer(child)) {
  char name[32];

  memset(name, 0, sizeof(name));
  OF_getprop(child, "name", name, sizeof(name));

  if (bootverbose)
   device_printf(dev, "CUDA child <%s>\n",name);

  if (strncmp(name, "adb", 4) == 0) {
   sc->adb_bus = device_add_child(dev,"adb",-1);
  }
 }

 clock_register(dev, 1000);
 EVENTHANDLER_REGISTER(shutdown_final, cuda_shutdown, sc,
     SHUTDOWN_PRI_LAST);

 return (bus_generic_attach(dev));
}
