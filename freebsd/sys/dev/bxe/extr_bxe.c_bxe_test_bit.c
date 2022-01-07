
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_load_acq_long (unsigned long volatile*) ;

int
bxe_test_bit(int nr,
             volatile unsigned long *addr)
{
    return ((atomic_load_acq_long(addr) & (1 << nr)) != 0);
}
