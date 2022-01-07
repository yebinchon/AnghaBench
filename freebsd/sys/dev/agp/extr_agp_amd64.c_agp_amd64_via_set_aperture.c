
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int AGP3_VIA_APSIZE ;
 int EINVAL ;
 int pci_cfgregwrite (int ,int,int ,int ,int,int) ;

__attribute__((used)) static int
agp_amd64_via_set_aperture(device_t dev, uint32_t aperture)
{
 uint32_t apsize;

 apsize = ((aperture - 1) >> 20) ^ 0xff;
 if ((((apsize ^ 0xff) << 20) | ((1 << 20) - 1)) + 1 != aperture)
  return (EINVAL);
 pci_cfgregwrite(0, 1, 0, AGP3_VIA_APSIZE, apsize, 1);

 return (0);
}
