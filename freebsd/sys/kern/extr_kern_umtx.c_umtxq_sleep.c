
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct umtxq_chain {int uc_lock; } ;
struct umtx_q {int uq_flags; int uq_key; } ;
struct abs_timeout {scalar_t__ is_abs_real; } ;
struct TYPE_2__ {void* td_rtcgen; } ;


 int EINTR ;
 int ERESTART ;
 int ETIMEDOUT ;
 int PCATCH ;
 int PDROP ;
 int UMTXQ_LOCKED_ASSERT (struct umtxq_chain*) ;
 int UQF_UMTXQ ;
 int abs_timeout_gethz (struct abs_timeout*) ;
 int abs_timeout_update (struct abs_timeout*) ;
 void* atomic_load_acq_int (int *) ;
 TYPE_1__* curthread ;
 int msleep (struct umtx_q*,int *,int,char const*,int) ;
 int rtc_generation ;
 struct umtxq_chain* umtxq_getchain (int *) ;
 int umtxq_lock (int *) ;

__attribute__((used)) static inline int
umtxq_sleep(struct umtx_q *uq, const char *wmesg, struct abs_timeout *abstime)
{
 struct umtxq_chain *uc;
 int error, timo;

 if (abstime != ((void*)0) && abstime->is_abs_real) {
  curthread->td_rtcgen = atomic_load_acq_int(&rtc_generation);
  abs_timeout_update(abstime);
 }

 uc = umtxq_getchain(&uq->uq_key);
 UMTXQ_LOCKED_ASSERT(uc);
 for (;;) {
  if (!(uq->uq_flags & UQF_UMTXQ)) {
   error = 0;
   break;
  }
  if (abstime != ((void*)0)) {
   timo = abs_timeout_gethz(abstime);
   if (timo < 0) {
    error = ETIMEDOUT;
    break;
   }
  } else
   timo = 0;
  error = msleep(uq, &uc->uc_lock, PCATCH | PDROP, wmesg, timo);
  if (error == EINTR || error == ERESTART) {
   umtxq_lock(&uq->uq_key);
   break;
  }
  if (abstime != ((void*)0)) {
   if (abstime->is_abs_real)
    curthread->td_rtcgen =
        atomic_load_acq_int(&rtc_generation);
   abs_timeout_update(abstime);
  }
  umtxq_lock(&uq->uq_key);
 }

 curthread->td_rtcgen = 0;
 return (error);
}
