
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct _umtx_op_args {int uaddr1; int val; int obj; } ;


 int do_set_ceiling (struct thread*,int ,int ,int ) ;

__attribute__((used)) static int
__umtx_op_set_ceiling(struct thread *td, struct _umtx_op_args *uap)
{

 return (do_set_ceiling(td, uap->obj, uap->val, uap->uaddr1));
}
