
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {struct ali_sata_resources* chipset_data; TYPE_1__* chip; } ;
struct ali_sata_resources {int ** bars; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ cfg2; } ;


 scalar_t__ ALI_SATA ;
 int M_ATAPCI ;
 int PCIR_BAR (int) ;
 int SYS_RES_IOPORT ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int free (struct ali_sata_resources*,int ) ;

__attribute__((used)) static int
ata_ali_chipdeinit(device_t dev)
{
 struct ata_pci_controller *ctlr = device_get_softc(dev);
 struct ali_sata_resources *res;
 int i;

 if (ctlr->chip->cfg2 == ALI_SATA) {
  res = ctlr->chipset_data;
  for (i = 0; i < 4; i++) {
   if (res->bars[i] != ((void*)0)) {
    bus_release_resource(dev, SYS_RES_IOPORT,
        PCIR_BAR(i), res->bars[i]);
   }
  }
  free(res, M_ATAPCI);
  ctlr->chipset_data = ((void*)0);
 }
 return (0);
}
