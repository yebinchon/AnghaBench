
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int AGP_SIS_WINCTRL ;
 int EINVAL ;
 int ffs (int) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
agp_sis_set_aperture(device_t dev, u_int32_t aperture)
{
 int gws;





 if (aperture & (aperture - 1)
     || aperture < 4*1024*1024
     || aperture > 256*1024*1024)
  return EINVAL;

 gws = ffs(aperture / 4*1024*1024) - 1;

 pci_write_config(dev, AGP_SIS_WINCTRL,
    ((pci_read_config(dev, AGP_SIS_WINCTRL, 1) & ~0x70)
     | gws << 4), 1);

 return 0;
}
