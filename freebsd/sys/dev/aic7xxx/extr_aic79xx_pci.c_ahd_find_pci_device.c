
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint16_t ;
typedef size_t u_int ;
struct ahd_pci_identity {int full_id; int id_mask; int * name; } ;
typedef int aic_dev_softc_t ;


 scalar_t__ ADAPTECVENDORID ;
 scalar_t__ DEVICE8081 ;
 scalar_t__ DEVICE8088 ;
 scalar_t__ DEVICE8089 ;
 int ID_ALL_IROC_MASK ;
 int PCIR_DEVICE ;
 int PCIR_DEVVENDOR ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBVEND_0 ;
 scalar_t__ SUBVENDOR9005 ;
 scalar_t__ ahd_attach_to_HostRAID_controllers ;
 int ahd_compose_id (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 size_t ahd_num_pci_devs ;
 struct ahd_pci_identity* ahd_pci_ident_table ;
 scalar_t__ aic_pci_read_config (int ,int ,int) ;
 int printf (char*) ;

struct ahd_pci_identity *
ahd_find_pci_device(aic_dev_softc_t pci)
{
 uint64_t full_id;
 uint16_t device;
 uint16_t vendor;
 uint16_t subdevice;
 uint16_t subvendor;
 struct ahd_pci_identity *entry;
 u_int i;

 vendor = aic_pci_read_config(pci, PCIR_DEVVENDOR, 2);
 device = aic_pci_read_config(pci, PCIR_DEVICE, 2);
 subvendor = aic_pci_read_config(pci, PCIR_SUBVEND_0, 2);
 subdevice = aic_pci_read_config(pci, PCIR_SUBDEV_0, 2);

 if ((vendor == ADAPTECVENDORID) && (subvendor == SUBVENDOR9005)) {
  if ((device == DEVICE8081) || (device == DEVICE8088) ||
   (device == DEVICE8089)) {
   printf("Controller device ID conflict with PMC Adaptec HBA\n");
   return (((void*)0));
  }
 }

 full_id = ahd_compose_id(device,
     vendor,
     subdevice,
     subvendor);






 if (ahd_attach_to_HostRAID_controllers)
  full_id &= ID_ALL_IROC_MASK;

 for (i = 0; i < ahd_num_pci_devs; i++) {
  entry = &ahd_pci_ident_table[i];
  if (entry->full_id == (full_id & entry->id_mask)) {

   if (entry->name == ((void*)0))
    return (((void*)0));
   return (entry);
  }
 }
 return (((void*)0));
}
