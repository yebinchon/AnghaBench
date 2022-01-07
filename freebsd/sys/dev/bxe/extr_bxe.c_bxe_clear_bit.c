
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_clear_acq_long (unsigned long volatile*,int) ;

void
bxe_clear_bit(int nr,
              volatile unsigned long *addr)
{
    atomic_clear_acq_long(addr, (1 << nr));
}
