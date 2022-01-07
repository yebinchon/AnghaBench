
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int t3_read_reg (int *,unsigned int) ;
 int t3_write_reg (int *,unsigned int,int) ;

void t3_set_reg_field(adapter_t *adapter, unsigned int addr, u32 mask, u32 val)
{
 u32 v = t3_read_reg(adapter, addr) & ~mask;

 t3_write_reg(adapter, addr, v | val);
 (void) t3_read_reg(adapter, addr);
}
