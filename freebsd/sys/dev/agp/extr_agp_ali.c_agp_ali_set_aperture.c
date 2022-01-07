
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int device_t ;


 int AGP_ALI_ATTBASE ;
 int AGP_ALI_TABLE_SIZE ;
 int EINVAL ;
 scalar_t__* agp_ali_table ;
 scalar_t__ pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,scalar_t__,int) ;

__attribute__((used)) static int
agp_ali_set_aperture(device_t dev, u_int32_t aperture)
{
 int i;
 u_int32_t attbase;

 for (i = 0; i < AGP_ALI_TABLE_SIZE; i++)
  if (agp_ali_table[i] == aperture)
   break;
 if (i == AGP_ALI_TABLE_SIZE)
  return EINVAL;

 attbase = pci_read_config(dev, AGP_ALI_ATTBASE, 4);
 pci_write_config(dev, AGP_ALI_ATTBASE, (attbase & ~0xf) | i, 4);
 return 0;
}
