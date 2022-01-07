
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiic_softc {int sc_regstep; int sc_node; int sc_i2c_base; int sc_irqrid; int sc_iicbus; int sc_ih; void* sc_irq; int sc_mutex; int * sc_reg; int sc_dev; } ;
typedef int reg ;
typedef int phandle_t ;
typedef int name ;
typedef int device_t ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int I2C_100kHz ;
 int I2C_INT_ADDR ;
 int I2C_INT_DATA ;
 int I2C_INT_STOP ;
 int I2C_STDMODE ;
 int IER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int ISR ;
 int MTX_DEF ;
 int OF_child (int) ;
 int OF_getencprop (int,char*,int*,int) ;
 scalar_t__ OF_getprop (int,char*,...) ;
 int REV ;
 int RF_ACTIVE ;
 int STATUS ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_setup_intr (int ,void*,int,int *,int ,struct kiic_softc*,int *) ;
 int bzero (struct kiic_softc*,int) ;
 int device_add_child (int ,char*,int) ;
 struct kiic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int kiic_intr ;
 int kiic_readreg (struct kiic_softc*,int ) ;
 int kiic_setmode (struct kiic_softc*,int ) ;
 int kiic_setspeed (struct kiic_softc*,int ) ;
 int kiic_writereg (struct kiic_softc*,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
kiic_attach(device_t self)
{
 struct kiic_softc *sc = device_get_softc(self);
 int rid, rate;
 phandle_t node;
 char name[64];

 bzero(sc, sizeof(*sc));
 sc->sc_dev = self;

 node = ofw_bus_get_node(self);
 if (node == 0 || node == -1) {
  return (EINVAL);
 }

 rid = 0;
 sc->sc_reg = bus_alloc_resource_any(self, SYS_RES_MEMORY,
   &rid, RF_ACTIVE);
 if (sc->sc_reg == ((void*)0)) {
  return (ENOMEM);
 }

 if (OF_getencprop(node, "AAPL,i2c-rate", &rate, 4) != 4) {
  device_printf(self, "cannot get i2c-rate\n");
  return (ENXIO);
 }
 if (OF_getencprop(node, "AAPL,address-step", &sc->sc_regstep, 4) != 4) {
  device_printf(self, "unable to find i2c address step\n");
  return (ENXIO);
 }
 sc->sc_node = node;

 node = OF_child(node);
 if (OF_getprop(node, "name", name, sizeof(name)) > 0) {
  if (strcmp(name,"i2c-bus") == 0) {
   phandle_t reg;
   if (OF_getprop(node, "reg", &reg, sizeof(reg)) > 0)
    sc->sc_i2c_base = reg << 8;

   sc->sc_node = node;
  }
 }

 mtx_init(&sc->sc_mutex, "kiic", ((void*)0), MTX_DEF);

 sc->sc_irq = bus_alloc_resource_any(self, SYS_RES_IRQ, &sc->sc_irqrid,
     RF_ACTIVE);
 bus_setup_intr(self, sc->sc_irq, INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0),
     kiic_intr, sc, &sc->sc_ih);

 kiic_writereg(sc, ISR, kiic_readreg(sc, ISR));
 kiic_writereg(sc, STATUS, 0);
 kiic_writereg(sc, IER, 0);

 kiic_setmode(sc, I2C_STDMODE);
 kiic_setspeed(sc, I2C_100kHz);

 kiic_writereg(sc, IER, I2C_INT_DATA | I2C_INT_ADDR | I2C_INT_STOP);

 if (bootverbose)
  device_printf(self, "Revision: %02X\n", kiic_readreg(sc, REV));


 sc->sc_iicbus = device_add_child(self, "iicbus", -1);

 return (bus_generic_attach(self));
}
