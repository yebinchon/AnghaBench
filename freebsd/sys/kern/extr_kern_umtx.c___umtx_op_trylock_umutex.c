
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct _umtx_op_args {int obj; } ;


 int _UMUTEX_TRY ;
 int do_lock_umutex (struct thread*,int ,int *,int ) ;

__attribute__((used)) static int
__umtx_op_trylock_umutex(struct thread *td, struct _umtx_op_args *uap)
{

 return (do_lock_umutex(td, uap->obj, ((void*)0), _UMUTEX_TRY));
}
