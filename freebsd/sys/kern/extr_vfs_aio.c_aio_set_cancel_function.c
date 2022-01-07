
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kaioinfo {int dummy; } ;
struct kaiocb {TYPE_1__* userproc; } ;
typedef int aio_cancel_fn_t ;
struct TYPE_2__ {struct kaioinfo* p_aioinfo; } ;


 int AIO_LOCK (struct kaioinfo*) ;
 int AIO_UNLOCK (struct kaioinfo*) ;
 int aio_set_cancel_function_locked (struct kaiocb*,int *) ;

bool
aio_set_cancel_function(struct kaiocb *job, aio_cancel_fn_t *func)
{
 struct kaioinfo *ki;
 bool ret;

 ki = job->userproc->p_aioinfo;
 AIO_LOCK(ki);
 ret = aio_set_cancel_function_locked(job, func);
 AIO_UNLOCK(ki);
 return (ret);
}
