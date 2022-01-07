
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int AGP_NVIDIA_0_APSIZE ;
 int device_printf (int ,char*,int) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static u_int32_t
agp_nvidia_get_aperture(device_t dev)
{
 switch (pci_read_config(dev, AGP_NVIDIA_0_APSIZE, 1) & 0x0f) {
 case 0: return (512 * 1024 * 1024);
 case 8: return (256 * 1024 * 1024);
 case 12: return (128 * 1024 * 1024);
 case 14: return (64 * 1024 * 1024);
 case 15: return (32 * 1024 * 1024);
 default:
  device_printf(dev, "Invalid aperture setting 0x%x\n",
      pci_read_config(dev, AGP_NVIDIA_0_APSIZE, 1));
  return 0;
 }
}
