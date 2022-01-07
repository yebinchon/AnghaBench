
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahc_softc {int flags; int dev_softc; TYPE_1__* platform_data; } ;
struct TYPE_2__ {int ih; int * irq; int irq_res_type; } ;


 int AHC_EDGE_INTERRUPT ;
 int ENOMEM ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int ahc_platform_intr ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct ahc_softc*,int *) ;
 int device_printf (int ,char*,...) ;

int
ahc_map_int(struct ahc_softc *ahc)
{
 int error;
 int zero;
 int shareable;

 zero = 0;
 shareable = (ahc->flags & AHC_EDGE_INTERRUPT) ? 0: RF_SHAREABLE;
 ahc->platform_data->irq =
     bus_alloc_resource_any(ahc->dev_softc, SYS_RES_IRQ, &zero,
       RF_ACTIVE | shareable);
 if (ahc->platform_data->irq == ((void*)0)) {
  device_printf(ahc->dev_softc,
         "bus_alloc_resource() failed to allocate IRQ\n");
  return (ENOMEM);
 }
 ahc->platform_data->irq_res_type = SYS_RES_IRQ;


 error = bus_setup_intr(ahc->dev_softc, ahc->platform_data->irq,
          INTR_TYPE_CAM|INTR_MPSAFE, ((void*)0),
          ahc_platform_intr, ahc, &ahc->platform_data->ih);

 if (error != 0)
  device_printf(ahc->dev_softc, "bus_setup_intr() failed: %d\n",
         error);
 return (error);
}
