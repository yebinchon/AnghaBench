
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_val_pair {int val; scalar_t__ reg_addr; } ;
typedef int adapter_t ;


 int t3_write_reg (int *,scalar_t__,int ) ;

void t3_write_regs(adapter_t *adapter, const struct addr_val_pair *p, int n,
     unsigned int offset)
{
 while (n--) {
  t3_write_reg(adapter, p->reg_addr + offset, p->val);
  p++;
 }
}
