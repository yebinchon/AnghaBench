
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int EAGAIN ;
 int t4_read_reg (struct adapter*,int) ;
 int udelay (int) ;

__attribute__((used)) static int t4_wait_op_done_val(struct adapter *adapter, int reg, u32 mask,
          int polarity, int attempts, int delay, u32 *valp)
{
 while (1) {
  u32 val = t4_read_reg(adapter, reg);

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
