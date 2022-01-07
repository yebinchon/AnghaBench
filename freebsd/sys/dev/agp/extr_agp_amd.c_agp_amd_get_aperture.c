
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int AGP_AMD751_APCTRL ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static u_int32_t
agp_amd_get_aperture(device_t dev)
{
 int vas;




 vas = (pci_read_config(dev, AGP_AMD751_APCTRL, 1) & 0x06) >> 1;
 return (32*1024*1024) << vas;
}
