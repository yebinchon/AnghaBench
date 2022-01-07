
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_cmpset_acq_long (unsigned long volatile*,unsigned long,unsigned long) ;

int
bxe_test_and_clear_bit(int nr,
                       volatile unsigned long *addr)
{
    unsigned long x;
    nr = (1 << nr);
    do {
        x = *addr;
    } while (atomic_cmpset_acq_long(addr, x, x & ~nr) == 0);

    return (x & nr);
}
