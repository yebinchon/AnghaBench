
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct glxiic_softc {int old_irq; int * irq_res; void* irq_rid; int * irq_handler; int * gpio_res; void* gpio_rid; int * smb_res; void* smb_rid; int * iicbus; int callout; int timeout; int mtx; int state; int dev; } ;
typedef int ich_func_t ;
typedef int device_t ;


 int CTLFLAG_RWTUN ;
 int ENXIO ;
 int GLXIIC_DEFAULT_TIMEOUT ;
 int GLXIIC_LOCK_DESTROY (struct glxiic_softc*) ;
 int GLXIIC_LOCK_INIT (struct glxiic_softc*) ;
 int GLXIIC_MAP_TO_SMB_IRQ (int ) ;
 int GLXIIC_MSR_PIC_YSEL_HIGH ;
 int GLXIIC_STATE_IDLE ;
 int IIC_FASTEST ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int OID_AUTO ;
 void* PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource (int ,int ,void**,int,int,int,int) ;
 void* bus_alloc_resource_any (int ,int ,void**,int) ;
 scalar_t__ bus_generic_attach ;
 int bus_release_resource (int ,int ,void*,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct glxiic_softc*,int **) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int config_intrhook_oneshot (int ,int ) ;
 int * device_add_child (int ,char*,int) ;
 int device_delete_child (int ,int *) ;
 struct glxiic_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int glxiic_gpio_disable (struct glxiic_softc*) ;
 int glxiic_gpio_enable (struct glxiic_softc*) ;
 int glxiic_intr ;
 int glxiic_smb_disable (struct glxiic_softc*) ;
 int glxiic_smb_enable (struct glxiic_softc*,int ,int ) ;
 int glxiic_smb_map_interrupt (int) ;
 int printf (char*,int) ;
 int rdmsr (int ) ;
 scalar_t__ resource_int_value (char*,int,char*,int*) ;

__attribute__((used)) static int
glxiic_attach(device_t dev)
{
 struct glxiic_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 int error, irq, unit;
 uint32_t irq_map;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->state = GLXIIC_STATE_IDLE;
 error = 0;

 GLXIIC_LOCK_INIT(sc);
 callout_init_mtx(&sc->callout, &sc->mtx, 0);

 sc->smb_rid = PCIR_BAR(0);
 sc->smb_res = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &sc->smb_rid,
     RF_ACTIVE);
 if (sc->smb_res == ((void*)0)) {
  device_printf(dev, "Could not allocate SMBus I/O port\n");
  error = ENXIO;
  goto out;
 }

 sc->gpio_rid = PCIR_BAR(1);
 sc->gpio_res = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
     &sc->gpio_rid, RF_SHAREABLE | RF_ACTIVE);
 if (sc->gpio_res == ((void*)0)) {
  device_printf(dev, "Could not allocate GPIO I/O port\n");
  error = ENXIO;
  goto out;
 }


 glxiic_smb_disable(sc);


 irq_map = rdmsr(GLXIIC_MSR_PIC_YSEL_HIGH);
 sc->old_irq = GLXIIC_MAP_TO_SMB_IRQ(irq_map);

 unit = device_get_unit(dev);
 if (resource_int_value("glxiic", unit, "irq", &irq) == 0) {
  if (irq < 1 || irq > 15) {
   device_printf(dev, "Bad value %d for glxiic.%d.irq\n",
       irq, unit);
   error = ENXIO;
   goto out;
  }

  if (bootverbose)
   device_printf(dev, "Using irq %d set by hint\n", irq);
 } else if (sc->old_irq != 0) {
  if (bootverbose)
   device_printf(dev, "Using irq %d set by firmware\n",
       irq);
  irq = sc->old_irq;
 } else {
  device_printf(dev, "No irq mapped by firmware");
  printf(" and no glxiic.%d.irq hint provided\n", unit);
  error = ENXIO;
  goto out;
 }


 glxiic_smb_map_interrupt(irq);

 sc->irq_rid = 0;
 sc->irq_res = bus_alloc_resource(dev, SYS_RES_IRQ, &sc->irq_rid,
     irq, irq, 1, RF_SHAREABLE | RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "Could not allocate IRQ %d\n", irq);
  error = ENXIO;
  goto out;
 }

 error = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), glxiic_intr, sc, &(sc->irq_handler));
 if (error != 0) {
  device_printf(dev, "Could not setup IRQ handler\n");
  error = ENXIO;
  goto out;
 }

 if ((sc->iicbus = device_add_child(dev, "iicbus", -1)) == ((void*)0)) {
  device_printf(dev, "Could not allocate iicbus instance\n");
  error = ENXIO;
  goto out;
 }

 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);

 sc->timeout = GLXIIC_DEFAULT_TIMEOUT;
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "timeout", CTLFLAG_RWTUN, &sc->timeout, 0,
     "activity timeout in ms");

 glxiic_gpio_enable(sc);
 glxiic_smb_enable(sc, IIC_FASTEST, 0);


 config_intrhook_oneshot((ich_func_t)bus_generic_attach, dev);
 error = 0;

out:
 if (error != 0) {
  callout_drain(&sc->callout);

  if (sc->iicbus != ((void*)0))
   device_delete_child(dev, sc->iicbus);
  if (sc->smb_res != ((void*)0)) {
   glxiic_smb_disable(sc);
   bus_release_resource(dev, SYS_RES_IOPORT, sc->smb_rid,
       sc->smb_res);
  }
  if (sc->gpio_res != ((void*)0)) {
   glxiic_gpio_disable(sc);
   bus_release_resource(dev, SYS_RES_IOPORT, sc->gpio_rid,
       sc->gpio_res);
  }
  if (sc->irq_handler != ((void*)0))
   bus_teardown_intr(dev, sc->irq_res, sc->irq_handler);
  if (sc->irq_res != ((void*)0))
   bus_release_resource(dev, SYS_RES_IRQ, sc->irq_rid,
       sc->irq_res);


  glxiic_smb_map_interrupt(sc->old_irq);

  GLXIIC_LOCK_DESTROY(sc);
 }

 return (error);
}
