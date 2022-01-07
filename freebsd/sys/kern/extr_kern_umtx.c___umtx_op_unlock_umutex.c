
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct _umtx_op_args {int obj; } ;


 int do_unlock_umutex (struct thread*,int ,int) ;

__attribute__((used)) static int
__umtx_op_unlock_umutex(struct thread *td, struct _umtx_op_args *uap)
{

 return (do_unlock_umutex(td, uap->obj, 0));
}
