
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* rm_descr; void* rm_type; } ;
struct apb_softc {int sc_misc_ih; int * sc_misc_irq; TYPE_1__ apb_irq_rman; TYPE_1__ apb_mem_rman; int apb_dev; } ;
typedef int device_t ;


 scalar_t__ APB_IRQ_BASE ;
 scalar_t__ APB_IRQ_END ;
 scalar_t__ AR5312_APB_BASE ;
 scalar_t__ AR5312_APB_SIZE ;
 int AR5312_IRQ_MISC ;
 scalar_t__ AR5312_SYSREG_BASE ;
 scalar_t__ AR5312_SYSREG_MISC_INTMASK ;
 scalar_t__ AR5315_APB_BASE ;
 scalar_t__ AR5315_APB_SIZE ;
 int AR5315_CPU_IRQ_MISC ;
 scalar_t__ AR5315_SYSREG_BASE ;
 scalar_t__ AR5315_SYSREG_MISC_INTMASK ;
 scalar_t__ AR531X_SOC_AR5315 ;
 int ATH_WRITE_REG (scalar_t__,int ) ;
 int ENXIO ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 void* RMAN_ARRAY ;
 int SYS_RES_IRQ ;
 int apb_filter ;
 scalar_t__ apb_pic_register_isrcs (struct apb_softc*) ;
 scalar_t__ ar531x_soc ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_enumerate_hinted_children (int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int ,int *,struct apb_softc*,int *) ;
 int cpu_establish_hardintr (char*,int ,int *,struct apb_softc*,int,int ,int *) ;
 struct apb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * intr_pic_register (int ,intptr_t) ;
 int panic (char*) ;
 intptr_t pic_xref (int ) ;
 scalar_t__ rman_init (TYPE_1__*) ;
 scalar_t__ rman_manage_region (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
apb_attach(device_t dev)
{
 struct apb_softc *sc = device_get_softc(dev);




 int rid = 0;


 sc->apb_dev = dev;

 sc->apb_mem_rman.rm_type = RMAN_ARRAY;
 sc->apb_mem_rman.rm_descr = "APB memory window";

 if(ar531x_soc >= AR531X_SOC_AR5315) {
  if (rman_init(&sc->apb_mem_rman) != 0 ||
      rman_manage_region(&sc->apb_mem_rman,
   AR5315_APB_BASE,
   AR5315_APB_BASE + AR5315_APB_SIZE - 1) != 0)
   panic("apb_attach: failed to set up memory rman");
 } else {
  if (rman_init(&sc->apb_mem_rman) != 0 ||
      rman_manage_region(&sc->apb_mem_rman,
   AR5312_APB_BASE,
   AR5312_APB_BASE + AR5312_APB_SIZE - 1) != 0)
   panic("apb_attach: failed to set up memory rman");
 }

 sc->apb_irq_rman.rm_type = RMAN_ARRAY;
 sc->apb_irq_rman.rm_descr = "APB IRQ";

 if (rman_init(&sc->apb_irq_rman) != 0 ||
     rman_manage_region(&sc->apb_irq_rman,
   APB_IRQ_BASE, APB_IRQ_END) != 0)
  panic("apb_attach: failed to set up IRQ rman");


 if ((sc->sc_misc_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE)) == ((void*)0)) {
  device_printf(dev, "unable to allocate IRQ resource\n");
  return (ENXIO);
 }

 if ((bus_setup_intr(dev, sc->sc_misc_irq, INTR_TYPE_MISC,
     apb_filter, ((void*)0), sc, &sc->sc_misc_ih))) {
  device_printf(dev,
      "WARNING: unable to register interrupt handler\n");
  return (ENXIO);
 }
 if(ar531x_soc >= AR531X_SOC_AR5315) {
  ATH_WRITE_REG(AR5315_SYSREG_BASE
   + AR5315_SYSREG_MISC_INTMASK, 0);
 } else {
  ATH_WRITE_REG(AR5312_SYSREG_BASE
   + AR5312_SYSREG_MISC_INTMASK, 0);
 }

 bus_generic_probe(dev);
 bus_enumerate_hinted_children(dev);
 bus_generic_attach(dev);

 return (0);
}
