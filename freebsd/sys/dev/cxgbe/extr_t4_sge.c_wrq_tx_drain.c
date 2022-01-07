
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_eq {int dummy; } ;
struct sge_wrq {int adapter; int wr_list; int incomplete_wrs; struct sge_eq eq; } ;


 int EQ_LOCK (struct sge_eq*) ;
 int EQ_UNLOCK (struct sge_eq*) ;
 int STAILQ_EMPTY (int *) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int drain_wrq_wr_list (int ,struct sge_wrq*) ;

__attribute__((used)) static void
wrq_tx_drain(void *arg, int n)
{
 struct sge_wrq *wrq = arg;
 struct sge_eq *eq = &wrq->eq;

 EQ_LOCK(eq);
 if (TAILQ_EMPTY(&wrq->incomplete_wrs) && !STAILQ_EMPTY(&wrq->wr_list))
  drain_wrq_wr_list(wrq->adapter, wrq);
 EQ_UNLOCK(eq);
}
