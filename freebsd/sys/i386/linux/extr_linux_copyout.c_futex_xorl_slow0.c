
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct futex_st0 {int oparg; int* oldval; } ;


 int atomic_fcmpset_int (int*,int*,int) ;

__attribute__((used)) static void
futex_xorl_slow0(vm_offset_t kva, void *arg)
{
 struct futex_st0 *st;
 int old;

 st = arg;
 old = *(int *)kva;
 while (!atomic_fcmpset_int((int *)kva, &old, old ^ st->oparg))
  ;
 *st->oldval = old;
}
