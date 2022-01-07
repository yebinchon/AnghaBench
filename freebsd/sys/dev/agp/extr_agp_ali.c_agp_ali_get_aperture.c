
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int AGP_ALI_ATTBASE ;
 int AGP_ALI_TABLE_SIZE ;
 int * agp_ali_table ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static u_int32_t
agp_ali_get_aperture(device_t dev)
{




 int i = pci_read_config(dev, AGP_ALI_ATTBASE, 4) & 0xf;
 if (i >= AGP_ALI_TABLE_SIZE)
  return 0;
 return agp_ali_table[i];
}
