
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct _umtx_op_args {int val; int uaddr1; } ;


 int umtx_shm (struct thread*,int ,int ) ;

__attribute__((used)) static int
__umtx_op_shm(struct thread *td, struct _umtx_op_args *uap)
{

 return (umtx_shm(td, uap->uaddr1, uap->val));
}
