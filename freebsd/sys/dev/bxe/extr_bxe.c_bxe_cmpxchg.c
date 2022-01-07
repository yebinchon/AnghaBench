
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_cmpset_acq_int (int volatile*,int,int) ;

int
bxe_cmpxchg(volatile int *addr,
            int old,
            int new)
{
    int x;
    do {
        x = *addr;
    } while (atomic_cmpset_acq_int(addr, old, new) == 0);
    return (x);
}
