
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_long ;


 int al_reg_write32 (void*,int ) ;

int
al_eth_fpga_write_pci_config(void *handle, int where, uint32_t val)
{


 al_reg_write32((void*)((u_long)handle + where), val);
 return (0);
}
