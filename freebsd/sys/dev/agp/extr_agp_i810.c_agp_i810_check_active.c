
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int device_t ;


 int AGP_I810_SMRAM ;
 int AGP_I810_SMRAM_GMS ;
 int AGP_I810_SMRAM_GMS_DISABLED ;
 int ENXIO ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static int
agp_i810_check_active(device_t bridge_dev)
{
 u_int8_t smram;

 smram = pci_read_config(bridge_dev, AGP_I810_SMRAM, 1);
 if ((smram & AGP_I810_SMRAM_GMS) == AGP_I810_SMRAM_GMS_DISABLED)
  return (ENXIO);
 return (0);
}
