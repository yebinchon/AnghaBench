
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {void** tf_a; void* tf_sepc; int tf_sp; } ;
struct thread {struct trapframe* td_frame; } ;
struct TYPE_3__ {scalar_t__ ss_size; scalar_t__ ss_sp; } ;
typedef TYPE_1__ stack_t ;
typedef void* register_t ;


 int STACKALIGN (scalar_t__) ;

void
cpu_set_upcall(struct thread *td, void (*entry)(void *), void *arg,
 stack_t *stack)
{
 struct trapframe *tf;

 tf = td->td_frame;

 tf->tf_sp = STACKALIGN((uintptr_t)stack->ss_sp + stack->ss_size);
 tf->tf_sepc = (register_t)entry;
 tf->tf_a[0] = (register_t)arg;
}
