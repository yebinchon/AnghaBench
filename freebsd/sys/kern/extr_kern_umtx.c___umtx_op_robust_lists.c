
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_robust_lists_params {int dummy; } ;
struct thread {int dummy; } ;
struct _umtx_op_args {int val; int uaddr1; } ;
typedef int rb ;


 int EINVAL ;
 int bzero (struct umtx_robust_lists_params*,int) ;
 int copyin (int ,struct umtx_robust_lists_params*,int) ;
 int umtx_robust_lists (struct thread*,struct umtx_robust_lists_params*) ;

__attribute__((used)) static int
__umtx_op_robust_lists(struct thread *td, struct _umtx_op_args *uap)
{
 struct umtx_robust_lists_params rb;
 int error;

 if (uap->val > sizeof(rb))
  return (EINVAL);
 bzero(&rb, sizeof(rb));
 error = copyin(uap->uaddr1, &rb, uap->val);
 if (error != 0)
  return (error);
 return (umtx_robust_lists(td, &rb));
}
