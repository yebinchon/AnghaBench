
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct _umtx_op_args {int val; int obj; } ;


 int kern_umtx_wake (struct thread*,int ,int ,int ) ;

__attribute__((used)) static int
__umtx_op_wake(struct thread *td, struct _umtx_op_args *uap)
{

 return (kern_umtx_wake(td, uap->obj, uap->val, 0));
}
