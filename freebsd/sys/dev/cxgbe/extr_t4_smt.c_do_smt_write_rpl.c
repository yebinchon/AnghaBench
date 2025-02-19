
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smt_entry {int lock; int state; } ;
struct sge_iq {struct adapter* adapter; } ;
struct rss_header {int dummy; } ;
struct mbuf {int dummy; } ;
struct cpl_smt_write_rpl {scalar_t__ status; } ;
struct adapter {TYPE_1__* smt; } ;
struct TYPE_2__ {struct smt_entry* smtab; } ;


 scalar_t__ CPL_ERR_NONE ;
 int EINVAL ;
 unsigned int GET_TID (struct cpl_smt_write_rpl const*) ;
 unsigned int G_TID_TID (unsigned int) ;
 int LOG_ERR ;
 int SMT_STATE_ERROR ;
 scalar_t__ __predict_false (int) ;
 int log (int ,char*,scalar_t__,unsigned int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
do_smt_write_rpl(struct sge_iq *iq, const struct rss_header *rss,
  struct mbuf *m)
{
 struct adapter *sc = iq->adapter;
 const struct cpl_smt_write_rpl *rpl = (const void *)(rss + 1);
 unsigned int tid = GET_TID(rpl);
 unsigned int smtidx = G_TID_TID(tid);

 if (__predict_false(rpl->status != CPL_ERR_NONE)) {
  struct smt_entry *e = &sc->smt->smtab[smtidx];
  log(LOG_ERR,
      "Unexpected SMT_WRITE_RPL (%u) for entry at hw_idx %u\n",
      rpl->status, smtidx);
  mtx_lock(&e->lock);
  e->state = SMT_STATE_ERROR;
  mtx_unlock(&e->lock);
  return (EINVAL);
 }

 return (0);
}
