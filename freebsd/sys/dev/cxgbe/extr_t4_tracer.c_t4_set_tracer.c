
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_params {int snap_len; scalar_t__ min_len; scalar_t__ skip_ofst; scalar_t__ skip_len; int invert; scalar_t__ port; int * mask; int * data; } ;
struct TYPE_4__ {int port; int snap_len; scalar_t__ min_len; scalar_t__ skip_len; scalar_t__ skip_ofst; int invert; int * mask; int * data; } ;
struct t4_tracer {scalar_t__ valid; int idx; int enabled; TYPE_2__ tp; } ;
struct adapter {scalar_t__ tracer_valid; scalar_t__ tracer_enabled; TYPE_1__** port; } ;
struct TYPE_3__ {scalar_t__ tx_chan; } ;


 int A_MPS_TRC_CFG ;
 int EINVAL ;
 int F_TRCEN ;
 int HOLD_LOCK ;
 int INTR_OK ;
 int LOCK_HELD ;
 scalar_t__ M_TFLENGTH ;
 scalar_t__ M_TFMINPKTSIZE ;
 scalar_t__ M_TFOFFSET ;
 int NTRACE ;
 int SLEEP_OK ;
 int begin_synchronized_op (struct adapter*,int *,int,char*) ;
 int clrbit (scalar_t__*,int ) ;
 int end_synchronized_op (struct adapter*,int ) ;
 scalar_t__ isset (scalar_t__*,int ) ;
 int memcpy (int *,int *,int) ;
 int setbit (scalar_t__*,int ) ;
 int t4_set_reg_field (struct adapter*,int ,int ,int ) ;
 int t4_set_trace_filter (struct adapter*,struct trace_params*,int ,int ) ;

int
t4_set_tracer(struct adapter *sc, struct t4_tracer *t)
{
 int rc;
 struct trace_params tp, *tpp;

 if (t->idx >= NTRACE)
  return (EINVAL);

 rc = begin_synchronized_op(sc, ((void*)0), HOLD_LOCK | SLEEP_OK | INTR_OK,
     "t4sett");
 if (rc)
  return (rc);






 if (t->valid == 0) {
  if (isset(&sc->tracer_valid, t->idx))
   tpp = ((void*)0);
  else
   rc = EINVAL;
  goto done;
 }

 if (t->tp.port > 19 || t->tp.snap_len > 9600 ||
     t->tp.min_len > M_TFMINPKTSIZE || t->tp.skip_len > M_TFLENGTH ||
     t->tp.skip_ofst > M_TFOFFSET) {
  rc = EINVAL;
  goto done;
 }

 memcpy(&tp.data[0], &t->tp.data[0], sizeof(tp.data));
 memcpy(&tp.mask[0], &t->tp.mask[0], sizeof(tp.mask));
 tp.snap_len = t->tp.snap_len;
 tp.min_len = t->tp.min_len;
 tp.skip_ofst = t->tp.skip_ofst;
 tp.skip_len = t->tp.skip_len;
 tp.invert = !!t->tp.invert;


 if (t->tp.port < 4) {
  if (sc->port[t->tp.port] == ((void*)0)) {
   rc = EINVAL;
   goto done;
  }
  tp.port = sc->port[t->tp.port]->tx_chan;
 } else if (t->tp.port < 8) {
  if (sc->port[t->tp.port - 4] == ((void*)0)) {
   rc = EINVAL;
   goto done;
  }
  tp.port = sc->port[t->tp.port - 4]->tx_chan + 4;
 }
 tpp = &tp;
done:
 if (rc == 0) {
  rc = -t4_set_trace_filter(sc, tpp, t->idx, t->enabled);
  if (rc == 0) {
   if (t->enabled) {
    setbit(&sc->tracer_valid, t->idx);
    if (sc->tracer_enabled == 0) {
     t4_set_reg_field(sc, A_MPS_TRC_CFG,
         F_TRCEN, F_TRCEN);
    }
    setbit(&sc->tracer_enabled, t->idx);
   } else {
    clrbit(&sc->tracer_enabled, t->idx);
    if (sc->tracer_enabled == 0) {
     t4_set_reg_field(sc, A_MPS_TRC_CFG,
         F_TRCEN, 0);
    }
   }
  }
 }
 end_synchronized_op(sc, LOCK_HELD);

 return (rc);
}
