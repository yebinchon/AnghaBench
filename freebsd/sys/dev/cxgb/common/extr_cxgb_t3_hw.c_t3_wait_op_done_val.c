
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int EAGAIN ;
 int t3_read_reg (int *,int) ;
 int udelay (int) ;

int t3_wait_op_done_val(adapter_t *adapter, int reg, u32 mask, int polarity,
   int attempts, int delay, u32 *valp)
{
 while (1) {
  u32 val = t3_read_reg(adapter, reg);

  if (!!(val & mask) == polarity) {
   if (valp)
    *valp = val;
   return 0;
  }
  if (--attempts == 0)
   return -EAGAIN;
  if (delay)
   udelay(delay);
 }
}
