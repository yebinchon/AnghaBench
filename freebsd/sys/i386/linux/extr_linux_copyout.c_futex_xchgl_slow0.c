
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct futex_st0 {int oparg; int * oldval; } ;


 int atomic_swap_int (int*,int ) ;

__attribute__((used)) static void
futex_xchgl_slow0(vm_offset_t kva, void *arg)
{
 struct futex_st0 *st;

 st = arg;
 *st->oldval = atomic_swap_int((int *)kva, st->oparg);
}
