
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kaudit_record {int dummy; } ;
struct kaudit_queue {int dummy; } ;
struct TYPE_2__ {scalar_t__ aq_lowater; } ;


 int MA_OWNED ;
 scalar_t__ TAILQ_EMPTY (struct kaudit_queue*) ;
 struct kaudit_record* TAILQ_FIRST (struct kaudit_queue*) ;
 int TAILQ_INIT (struct kaudit_queue*) ;
 int TAILQ_INSERT_TAIL (struct kaudit_queue*,struct kaudit_record*,int ) ;
 int TAILQ_REMOVE (struct kaudit_queue*,struct kaudit_record*,int ) ;
 int audit_free (struct kaudit_record*) ;
 int audit_mtx ;
 struct kaudit_queue audit_q ;
 scalar_t__ audit_q_len ;
 TYPE_1__ audit_qctrl ;
 int audit_watermark_cv ;
 int audit_worker_cv ;
 int audit_worker_process_record (struct kaudit_record*) ;
 int cv_broadcast (int *) ;
 int cv_wait (int *,int *) ;
 int k_q ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
audit_worker(void *arg)
{
 struct kaudit_queue ar_worklist;
 struct kaudit_record *ar;
 int lowater_signal;

 TAILQ_INIT(&ar_worklist);
 mtx_lock(&audit_mtx);
 while (1) {
  mtx_assert(&audit_mtx, MA_OWNED);




  while (TAILQ_EMPTY(&audit_q))
   cv_wait(&audit_worker_cv, &audit_mtx);
  lowater_signal = 0;
  while ((ar = TAILQ_FIRST(&audit_q))) {
   TAILQ_REMOVE(&audit_q, ar, k_q);
   audit_q_len--;
   if (audit_q_len == audit_qctrl.aq_lowater)
    lowater_signal++;
   TAILQ_INSERT_TAIL(&ar_worklist, ar, k_q);
  }
  if (lowater_signal)
   cv_broadcast(&audit_watermark_cv);

  mtx_unlock(&audit_mtx);
  while ((ar = TAILQ_FIRST(&ar_worklist))) {
   TAILQ_REMOVE(&ar_worklist, ar, k_q);
   audit_worker_process_record(ar);
   audit_free(ar);
  }
  mtx_lock(&audit_mtx);
 }
}
