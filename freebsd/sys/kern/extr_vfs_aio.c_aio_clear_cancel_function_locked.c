
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kaiocb {int jobflags; int * cancel_fn; TYPE_1__* userproc; } ;
struct TYPE_2__ {int p_aioinfo; } ;


 int AIO_LOCK_ASSERT (int ,int ) ;
 int KAIOCB_CANCELLING ;
 int KAIOCB_CLEARED ;
 int MA_OWNED ;
 int MPASS (int ) ;

__attribute__((used)) static bool
aio_clear_cancel_function_locked(struct kaiocb *job)
{

 AIO_LOCK_ASSERT(job->userproc->p_aioinfo, MA_OWNED);
 MPASS(job->cancel_fn != ((void*)0));
 if (job->jobflags & KAIOCB_CANCELLING) {
  job->jobflags |= KAIOCB_CLEARED;
  return (0);
 }
 job->cancel_fn = ((void*)0);
 return (1);
}
