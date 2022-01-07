
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct TYPE_3__ {scalar_t__ depth; } ;


 int PSL_I ;
 int TF_FLAGS (struct trapframe*) ;
 int TF_FP (struct trapframe*) ;
 int TRAPF_USERMODE (struct trapframe*) ;
 int atomic_store_rel_ptr (long*,long) ;
 scalar_t__ curthread ;
 scalar_t__ nmi_pending ;
 TYPE_1__* nmi_stack ;
 int stack_capture (scalar_t__,TYPE_1__*,int ) ;

int
stack_nmi_handler(struct trapframe *tf)
{
 return (0);

}
