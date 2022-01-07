
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int AGP_AMD751_APCTRL ;
 int EINVAL ;
 int ffs (int) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
agp_amd_set_aperture(device_t dev, u_int32_t aperture)
{
 int vas;





 if (aperture & (aperture - 1)
     || aperture < 32*1024*1024
     || aperture > 2U*1024*1024*1024)
  return EINVAL;

 vas = ffs(aperture / 32*1024*1024) - 1;





 pci_write_config(dev, AGP_AMD751_APCTRL,
    (((pci_read_config(dev, AGP_AMD751_APCTRL, 1) & ~0x06)
     | ((vas << 1) | 1))), 1);

 return 0;
}
