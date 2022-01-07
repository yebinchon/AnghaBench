
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int t3_wait_op_done_val (int *,int,int ,int,int,int,int *) ;

__attribute__((used)) static inline int t3_wait_op_done(adapter_t *adapter, int reg, u32 mask,
      int polarity, int attempts, int delay)
{
 return t3_wait_op_done_val(adapter, reg, mask, polarity, attempts,
       delay, ((void*)0));
}
