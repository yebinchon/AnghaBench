
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int device_t ;


 int AGP_NVIDIA_0_APSIZE ;
 int EINVAL ;
 int device_printf (int ,char*,int) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
agp_nvidia_set_aperture(device_t dev, u_int32_t aperture)
{
 u_int8_t val;
 u_int8_t key;

 switch (aperture) {
 case (512 * 1024 * 1024): key = 0; break;
 case (256 * 1024 * 1024): key = 8; break;
 case (128 * 1024 * 1024): key = 12; break;
 case (64 * 1024 * 1024): key = 14; break;
 case (32 * 1024 * 1024): key = 15; break;
 default:
  device_printf(dev, "Invalid aperture size (%dMb)\n",
    aperture / 1024 / 1024);
  return (EINVAL);
 }
 val = pci_read_config(dev, AGP_NVIDIA_0_APSIZE, 1);
 pci_write_config(dev, AGP_NVIDIA_0_APSIZE, ((val & ~0x0f) | key), 1);

 return (0);
}
