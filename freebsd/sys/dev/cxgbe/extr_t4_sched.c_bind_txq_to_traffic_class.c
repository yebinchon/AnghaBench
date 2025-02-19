
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct tx_cl_rl_params {int flags; scalar_t__ refcount; } ;
struct TYPE_7__ {int flags; size_t tx_chan; int cntxt_id; } ;
struct sge_txq {int tc_idx; TYPE_3__ eq; } ;
struct adapter {int tc_lock; TYPE_4__* chip_params; int pf; int mbox; TYPE_2__** port; } ;
struct TYPE_8__ {int nsched_cls; } ;
struct TYPE_6__ {TYPE_1__* sched_params; } ;
struct TYPE_5__ {struct tx_cl_rl_params* cl_rl; } ;


 int CLRL_ERR ;
 int EAGAIN ;
 int EBUSY ;
 int ENXIO ;
 int EQ_ALLOCATED ;
 int FW_PARAMS_MNEM_DMAQ ;
 int FW_PARAMS_PARAM_DMAQ_EQ_SCHEDCLASS_ETH ;
 int INTR_OK ;
 int MPASS (int) ;
 int SLEEP_OK ;
 int V_FW_PARAMS_MNEM (int ) ;
 int V_FW_PARAMS_PARAM_X (int ) ;
 int V_FW_PARAMS_PARAM_YZ (int ) ;
 int begin_synchronized_op (struct adapter*,int *,int,char*) ;
 int end_synchronized_op (struct adapter*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int t4_set_params (struct adapter*,int ,int ,int ,int,int*,int*) ;

__attribute__((used)) static int
bind_txq_to_traffic_class(struct adapter *sc, struct sge_txq *txq, int idx)
{
 struct tx_cl_rl_params *tc0, *tc;
 int rc, old_idx;
 uint32_t fw_mnem, fw_class;

 if (!(txq->eq.flags & EQ_ALLOCATED))
  return (EAGAIN);

 mtx_lock(&sc->tc_lock);
 if (txq->tc_idx == -2) {
  rc = EBUSY;
  goto done;
 }
 if (idx == txq->tc_idx) {
  rc = 0;
  goto done;
 }

 tc0 = &sc->port[txq->eq.tx_chan]->sched_params->cl_rl[0];
 if (idx != -1) {



  tc = &tc0[idx];
  if (tc->flags & CLRL_ERR) {
   rc = ENXIO;
   goto done;
  } else {





   tc->refcount++;
  }
 }

 old_idx = txq->tc_idx;
 txq->tc_idx = -2;
 mtx_unlock(&sc->tc_lock);

 rc = begin_synchronized_op(sc, ((void*)0), SLEEP_OK | INTR_OK, "t4btxq");
 if (rc != 0)
  return (rc);
 fw_mnem = (V_FW_PARAMS_MNEM(FW_PARAMS_MNEM_DMAQ) |
     V_FW_PARAMS_PARAM_X(FW_PARAMS_PARAM_DMAQ_EQ_SCHEDCLASS_ETH) |
     V_FW_PARAMS_PARAM_YZ(txq->eq.cntxt_id));
 fw_class = idx < 0 ? 0xffffffff : idx;
 rc = -t4_set_params(sc, sc->mbox, sc->pf, 0, 1, &fw_mnem, &fw_class);
 end_synchronized_op(sc, 0);

 mtx_lock(&sc->tc_lock);
 MPASS(txq->tc_idx == -2);
 if (rc == 0) {




  if (old_idx != -1) {
   tc = &tc0[old_idx];
   MPASS(tc->refcount > 0);
   tc->refcount--;
  }
  txq->tc_idx = idx;
 } else {




  if (idx != -1) {
   tc = &tc0[idx];
   MPASS(tc->refcount > 0);
   tc->refcount--;
  }
  txq->tc_idx = old_idx;
 }
done:
 MPASS(txq->tc_idx >= -1 && txq->tc_idx < sc->chip_params->nsched_cls);
 mtx_unlock(&sc->tc_lock);
 return (rc);
}
