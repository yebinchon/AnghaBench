
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct mbuf {int dummy; } ;
struct fsmheader {int id; int length; } ;
struct fsm_opt_hdr {int dummy; } ;
struct fsm_decode {int rej; int rejend; int nak; int nakend; int ack; int ackend; } ;
struct fsm {int state; TYPE_3__* parent; TYPE_2__* fn; TYPE_1__* link; int LogLevel; } ;
struct TYPE_6__ {int object; int (* LayerDown ) (int ,struct fsm*) ;int (* LayerUp ) (int ,struct fsm*) ;} ;
struct TYPE_5__ {int (* LayerDown ) (struct fsm*) ;int (* LayerUp ) (struct fsm*) ;int (* SendTerminateAck ) (struct fsm*,int ) ;int (* DecodeConfig ) (struct fsm*,int *,int *,int ,struct fsm_decode*) ;} ;
struct TYPE_4__ {int lcp; } ;


 int FSM_REQ_TIMER ;
 int FSM_TRM_TIMER ;
 int FsmInitRestartCounter (struct fsm*,int ) ;
 int FsmSendConfigReq (struct fsm*) ;
 int FsmSendTerminateReq (struct fsm*) ;
 int * MBUF_CTOP (struct mbuf*) ;
 int MODE_ACK ;
 int NewState (struct fsm*,int const) ;
 int lcp_SendIdentification (int *) ;
 int log_Printf (int ,char*) ;
 int m_freem (struct mbuf*) ;
 int m_length (struct mbuf*) ;
 struct mbuf* m_pullup (struct mbuf*) ;
 int ntohs (int ) ;
 int stub1 (struct fsm*,int *,int *,int ,struct fsm_decode*) ;
 int stub2 (struct fsm*,int ) ;
 int stub3 (struct fsm*) ;
 int stub4 (int ,struct fsm*) ;
 int stub5 (struct fsm*) ;
 int stub6 (struct fsm*) ;
 int stub7 (int ,struct fsm*) ;

__attribute__((used)) static void
FsmRecvConfigAck(struct fsm *fp, struct fsmheader *lhp, struct mbuf *bp)

{
  struct fsm_decode dec;
  int plen, flen;
  u_char *cp;

  plen = m_length(bp);
  flen = ntohs(lhp->length) - sizeof *lhp;
  if (plen < flen) {
    m_freem(bp);
    return;
  }

  bp = m_pullup(bp);
  dec.ackend = dec.ack;
  dec.nakend = dec.nak;
  dec.rejend = dec.rej;
  cp = MBUF_CTOP(bp);
  (*fp->fn->DecodeConfig)(fp, cp, cp + flen, MODE_ACK, &dec);
  if (flen < (int)sizeof(struct fsm_opt_hdr))
    log_Printf(fp->LogLevel, "  [EMPTY]\n");

  switch (fp->state) {
    case 133:
    case 129:
    (*fp->fn->SendTerminateAck)(fp, lhp->id);
    break;
  case 132:
  case 128:
    break;
  case 130:
    FsmInitRestartCounter(fp, FSM_REQ_TIMER);
    NewState(fp, 135);
    break;
  case 135:
    FsmSendConfigReq(fp);
    NewState(fp, 130);
    break;
  case 134:
    FsmInitRestartCounter(fp, FSM_REQ_TIMER);
    NewState(fp, 131);
    if ((*fp->fn->LayerUp)(fp))
      (*fp->parent->LayerUp)(fp->parent->object, fp);
    else {
      (*fp->fn->LayerDown)(fp);
      FsmInitRestartCounter(fp, FSM_TRM_TIMER);
      FsmSendTerminateReq(fp);
      NewState(fp, 132);
      lcp_SendIdentification(&fp->link->lcp);
    }
    break;
  case 131:
    (*fp->fn->LayerDown)(fp);
    FsmSendConfigReq(fp);
    NewState(fp, 130);
    (*fp->parent->LayerDown)(fp->parent->object, fp);
    break;
  }
  m_freem(bp);
}
