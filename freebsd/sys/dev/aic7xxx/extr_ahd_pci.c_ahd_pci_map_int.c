
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahd_softc {TYPE_1__* platform_data; int dev_softc; } ;
struct TYPE_2__ {int irq_res_type; int * irq; } ;


 int ENOMEM ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int ahd_map_int (struct ahd_softc*) ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;

int
ahd_pci_map_int(struct ahd_softc *ahd)
{
 int zero;

 zero = 0;
 ahd->platform_data->irq =
     bus_alloc_resource_any(ahd->dev_softc, SYS_RES_IRQ, &zero,
       RF_ACTIVE | RF_SHAREABLE);
 if (ahd->platform_data->irq == ((void*)0))
  return (ENOMEM);
 ahd->platform_data->irq_res_type = SYS_RES_IRQ;
 return (ahd_map_int(ahd));
}
