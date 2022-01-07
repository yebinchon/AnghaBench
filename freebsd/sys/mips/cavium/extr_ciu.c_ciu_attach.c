
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* rm_descr; int rm_type; } ;
struct ciu_softc {TYPE_1__ irq_rman; int * ciu_irq; } ;
typedef int device_t ;


 int CIU_IRQ_EN0_BEGIN ;
 unsigned int CIU_IRQ_EN0_COUNT ;
 int CIU_IRQ_EN1_BEGIN ;
 unsigned int CIU_IRQ_EN1_COUNT ;
 int CIU_IRQ_EN1_END ;
 int CIU_IRQ_HARD ;
 int ENXIO ;
 int INTR_TYPE_MISC ;
 int MAXCOMLEN ;
 int RF_ACTIVE ;
 int RMAN_ARRAY ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource (int ,int ,int*,int,int,int,int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int bus_setup_intr (int ,int *,int ,int ,int *,struct ciu_softc*,int *) ;
 void** ciu_en0_intrcnt ;
 void** ciu_en1_intrcnt ;
 int ciu_intr ;
 struct ciu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 void* mips_intrcnt_create (char*) ;
 int rman_init (TYPE_1__*) ;
 int rman_manage_region (TYPE_1__*,int,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
ciu_attach(device_t dev)
{
 char name[MAXCOMLEN + 1];
 struct ciu_softc *sc;
 unsigned i;
 int error;
 int rid;

 sc = device_get_softc(dev);

 rid = 0;
 sc->ciu_irq = bus_alloc_resource(dev, SYS_RES_IRQ, &rid, CIU_IRQ_HARD,
      CIU_IRQ_HARD, 1, RF_ACTIVE);
 if (sc->ciu_irq == ((void*)0)) {
  device_printf(dev, "could not allocate irq%d\n", CIU_IRQ_HARD);
  return (ENXIO);
 }

 error = bus_setup_intr(dev, sc->ciu_irq, INTR_TYPE_MISC, ciu_intr,
          ((void*)0), sc, ((void*)0));
 if (error != 0) {
  device_printf(dev, "bus_setup_intr failed: %d\n", error);
  return (error);
 }

 sc->irq_rman.rm_type = RMAN_ARRAY;
 sc->irq_rman.rm_descr = "CIU IRQ";

 error = rman_init(&sc->irq_rman);
 if (error != 0)
  return (error);




 error = rman_manage_region(&sc->irq_rman, CIU_IRQ_EN0_BEGIN,
       CIU_IRQ_EN1_END);
 if (error != 0)
  return (error);

 for (i = 0; i < CIU_IRQ_EN0_COUNT; i++) {
  snprintf(name, sizeof name, "int%d:", i + CIU_IRQ_EN0_BEGIN);
  ciu_en0_intrcnt[i] = mips_intrcnt_create(name);
 }

 for (i = 0; i < CIU_IRQ_EN1_COUNT; i++) {
  snprintf(name, sizeof name, "int%d:", i + CIU_IRQ_EN1_BEGIN);
  ciu_en1_intrcnt[i] = mips_intrcnt_create(name);
 }

 bus_generic_probe(dev);
 bus_generic_attach(dev);

 return (0);
}
