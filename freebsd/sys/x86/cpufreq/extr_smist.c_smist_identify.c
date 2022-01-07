
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct piix4_pci_device {char* desc; int device; int vendor; } ;
typedef int driver_t ;
typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int,char*,int) ;
 scalar_t__ CPU_VENDOR_INTEL ;
 scalar_t__ bootverbose ;
 int cpu_id ;
 scalar_t__ cpu_vendor_id ;
 int * device_find_child (int *,char*,int) ;
 int device_printf (int *,char*) ;
 int * pci_find_device (int ,int ) ;
 struct piix4_pci_device* piix4_pci_devices ;
 int printf (char*,char*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static void
smist_identify(driver_t *driver, device_t parent)
{
 struct piix4_pci_device *id;
 device_t piix4 = ((void*)0);

 if (resource_disabled("ichst", 0))
  return;


 if (cpu_vendor_id != CPU_VENDOR_INTEL)
  return;
 switch (cpu_id & 0xff0) {
 case 0x680:
 case 0x6a0:
  break;
 default:
  return;
 }


 for (id = piix4_pci_devices; id->desc != ((void*)0); ++id) {
  if ((piix4 = pci_find_device(id->vendor, id->device)) != ((void*)0))
   break;
 }
 if (!piix4)
  return;

 if (bootverbose)
  printf("smist: found supported isa bridge %s\n", id->desc);

 if (device_find_child(parent, "smist", -1) != ((void*)0))
  return;
 if (BUS_ADD_CHILD(parent, 30, "smist", -1) == ((void*)0))
  device_printf(parent, "smist: add child failed\n");
}
