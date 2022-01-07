
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_long ;


 int al_reg_read32 (void*) ;

int
al_eth_fpga_read_pci_config(void *handle, int where, uint32_t *val)
{


 *val = al_reg_read32((void*)((u_long)handle + where));

 return (0);
}
