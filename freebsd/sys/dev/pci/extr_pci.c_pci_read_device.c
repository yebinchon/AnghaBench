
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pci_devinfo {int dummy; } ;
typedef int device_t ;


 int PCIR_DEVICE ;
 int PCIR_VENDOR ;
 int REG (int ,int) ;
 struct pci_devinfo* pci_fill_devinfo (int ,int ,int,int,int,int,int,int) ;

struct pci_devinfo *
pci_read_device(device_t pcib, device_t bus, int d, int b, int s, int f)
{

 uint16_t vid, did;

 vid = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_VENDOR, 2);
 did = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_DEVICE, 2);
 if (vid != 0xffff)
  return (pci_fill_devinfo(pcib, bus, d, b, s, f, vid, did));

 return (((void*)0));
}
