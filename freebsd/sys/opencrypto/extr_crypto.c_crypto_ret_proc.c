
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bintime {int dummy; } ;
struct cryptop {scalar_t__ crp_seq; int (* krp_callback ) (struct cryptop*) ;int (* crp_callback ) (struct cryptop*) ;struct bintime crp_tstamp; } ;
struct crypto_ret_worker {scalar_t__ reorder_cur_seq; int crp_ret_q; int * cryptoretproc; int crypto_ret_mtx; int crp_ret_kq; int crp_ordered_ret_q; } ;
struct cryptkop {scalar_t__ crp_seq; int (* krp_callback ) (struct cryptop*) ;int (* crp_callback ) (struct cryptop*) ;struct bintime crp_tstamp; } ;
struct TYPE_2__ {int cs_rets; int cs_finis; int cs_cb; } ;


 int CRYPTO_RETW_LOCK (struct crypto_ret_worker*) ;
 int CRYPTO_RETW_UNLOCK (struct crypto_ret_worker*) ;
 int PWAIT ;
 struct cryptop* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct cryptop*,int ) ;
 int crp_next ;
 int crypto_finis (int *) ;
 scalar_t__ crypto_timing ;
 int crypto_tstat (int *,struct bintime*) ;
 TYPE_1__ cryptostats ;
 int krp_next ;
 int msleep (int *,int *,int ,char*,int ) ;
 int stub1 (struct cryptop*) ;
 int stub2 (struct cryptop*) ;
 int stub3 (struct cryptop*) ;

__attribute__((used)) static void
crypto_ret_proc(struct crypto_ret_worker *ret_worker)
{
 struct cryptop *crpt;
 struct cryptkop *krpt;

 CRYPTO_RETW_LOCK(ret_worker);
 for (;;) {

  crpt = TAILQ_FIRST(&ret_worker->crp_ordered_ret_q);
  if (crpt != ((void*)0)) {
   if (crpt->crp_seq == ret_worker->reorder_cur_seq) {
    TAILQ_REMOVE(&ret_worker->crp_ordered_ret_q, crpt, crp_next);
    ret_worker->reorder_cur_seq++;
   } else {
    crpt = ((void*)0);
   }
  }

  if (crpt == ((void*)0)) {
   crpt = TAILQ_FIRST(&ret_worker->crp_ret_q);
   if (crpt != ((void*)0))
    TAILQ_REMOVE(&ret_worker->crp_ret_q, crpt, crp_next);
  }

  krpt = TAILQ_FIRST(&ret_worker->crp_ret_kq);
  if (krpt != ((void*)0))
   TAILQ_REMOVE(&ret_worker->crp_ret_kq, krpt, krp_next);

  if (crpt != ((void*)0) || krpt != ((void*)0)) {
   CRYPTO_RETW_UNLOCK(ret_worker);



   if (crpt != ((void*)0)) {
     crpt->crp_callback(crpt);
   }
   if (krpt != ((void*)0))
    krpt->krp_callback(krpt);
   CRYPTO_RETW_LOCK(ret_worker);
  } else {




   msleep(&ret_worker->crp_ret_q, &ret_worker->crypto_ret_mtx, PWAIT,
    "crypto_ret_wait", 0);
   if (ret_worker->cryptoretproc == ((void*)0))
    break;
   cryptostats.cs_rets++;
  }
 }
 CRYPTO_RETW_UNLOCK(ret_worker);

 crypto_finis(&ret_worker->crp_ret_q);
}
