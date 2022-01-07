
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vm_quantum_shift; scalar_t__ vm_quantum_mask; struct vmem_freelist* vm_freelist; } ;
typedef TYPE_1__ vmem_t ;
typedef scalar_t__ vmem_size_t ;
struct vmem_freelist {int dummy; } ;


 int MPASS (int) ;
 int M_FIRSTFIT ;
 scalar_t__ const ORDER2SIZE (int) ;
 int SIZE2ORDER (scalar_t__ const) ;
 int VMEM_MAXORDER ;

__attribute__((used)) static struct vmem_freelist *
bt_freehead_toalloc(vmem_t *vm, vmem_size_t size, int strat)
{
 const vmem_size_t qsize = size >> vm->vm_quantum_shift;
 int idx = SIZE2ORDER(qsize);

 MPASS(size != 0 && qsize != 0);
 MPASS((size & vm->vm_quantum_mask) == 0);

 if (strat == M_FIRSTFIT && ORDER2SIZE(idx) != qsize) {
  idx++;

 }
 MPASS(idx >= 0);
 MPASS(idx < VMEM_MAXORDER);

 return &vm->vm_freelist[idx];
}
