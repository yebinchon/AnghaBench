
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int al_reg_write32 (int *,int ) ;

void
al_eth_forward_int_config(uint32_t *offset, uint32_t value)
{

 al_reg_write32(offset, value);
}
