
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kaiocb {int jobflags; int * cancel_fn; TYPE_1__* userproc; } ;
typedef int aio_cancel_fn_t ;
struct TYPE_2__ {int p_aioinfo; } ;


 int AIO_LOCK_ASSERT (int ,int ) ;
 int KAIOCB_CANCELLED ;
 int MA_OWNED ;

__attribute__((used)) static bool
aio_set_cancel_function_locked(struct kaiocb *job, aio_cancel_fn_t *func)
{

 AIO_LOCK_ASSERT(job->userproc->p_aioinfo, MA_OWNED);
 if (job->jobflags & KAIOCB_CANCELLED)
  return (0);
 job->cancel_fn = func;
 return (1);
}
