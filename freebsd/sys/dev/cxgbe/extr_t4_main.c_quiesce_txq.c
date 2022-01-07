
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_eq {size_t sidx; int flags; scalar_t__ pidx; scalar_t__ cidx; int * desc; } ;
struct sge_txq {int r; struct sge_eq eq; } ;
struct sge_qstat {scalar_t__ cidx; } ;
struct adapter {int dummy; } ;


 int EQ_ENABLED ;
 int MPASS (int) ;
 int TXQ_LOCK (struct sge_txq*) ;
 int TXQ_UNLOCK (struct sge_txq*) ;
 scalar_t__ htobe16 (scalar_t__) ;
 int mp_ring_check_drainage (int ,int ) ;
 int mp_ring_is_idle (int ) ;
 int pause (char*,int) ;

__attribute__((used)) static void
quiesce_txq(struct adapter *sc, struct sge_txq *txq)
{
 struct sge_eq *eq = &txq->eq;
 struct sge_qstat *spg = (void *)&eq->desc[eq->sidx];

 (void) sc;
 while (!mp_ring_is_idle(txq->r)) {
  mp_ring_check_drainage(txq->r, 0);
  pause("rquiesce", 1);
 }


 while (spg->cidx != htobe16(eq->pidx))
  pause("equiesce", 1);


 while (eq->cidx != eq->pidx)
  pause("dquiesce", 1);
}
