
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
struct fsm {int state; TYPE_3__* parent; TYPE_2__* fn; int LogLevel; TYPE_1__* link; } ;
struct TYPE_6__ {int object; int (* LayerDown ) (int ,struct fsm*) ;} ;
struct TYPE_5__ {int (* LayerDown ) (struct fsm*) ;int (* DecodeConfig ) (struct fsm*,int *,int *,int ,struct fsm_decode*) ;int (* SendTerminateAck ) (struct fsm*,int ) ;} ;
struct TYPE_4__ {int name; int lcp; } ;


 int FSM_REQ_TIMER ;
 int FsmInitRestartCounter (struct fsm*,int ) ;
 int FsmSendConfigReq (struct fsm*) ;
 int * MBUF_CTOP (struct mbuf*) ;
 int MODE_REJ ;
 int NewState (struct fsm*,int const) ;
 int State2Nam (int) ;
 int lcp_SendIdentification (int *) ;
 int log_Printf (int ,char*,...) ;
 int m_freem (struct mbuf*) ;
 size_t m_length (struct mbuf*) ;
 struct mbuf* m_pullup (struct mbuf*) ;
 int ntohs (int ) ;
 int stub1 (struct fsm*,int ) ;
 int stub2 (struct fsm*,int *,int *,int ,struct fsm_decode*) ;
 int stub3 (struct fsm*) ;
 int stub4 (int ,struct fsm*) ;

__attribute__((used)) static void
FsmRecvConfigRej(struct fsm *fp, struct fsmheader *lhp, struct mbuf *bp)

{
  struct fsm_decode dec;
  size_t plen;
  int flen;
  u_char *cp;

  plen = m_length(bp);
  flen = ntohs(lhp->length) - sizeof *lhp;
  if ((int)plen < flen) {
    m_freem(bp);
    return;
  }

  lcp_SendIdentification(&fp->link->lcp);




  switch (fp->state) {
  case 133:
  case 130:
    log_Printf(fp->LogLevel, "%s: Oops, RCJ in %s.\n",
              fp->link->name, State2Nam(fp->state));
    m_freem(bp);
    return;
  case 135:
  case 129:
    (*fp->fn->SendTerminateAck)(fp, lhp->id);
    m_freem(bp);
    return;
  case 134:
  case 128:
    m_freem(bp);
    return;
  }

  bp = m_pullup(bp);
  dec.ackend = dec.ack;
  dec.nakend = dec.nak;
  dec.rejend = dec.rej;
  cp = MBUF_CTOP(bp);
  (*fp->fn->DecodeConfig)(fp, cp, cp + flen, MODE_REJ, &dec);
  if (flen < (int)sizeof(struct fsm_opt_hdr))
    log_Printf(fp->LogLevel, "  [EMPTY]\n");

  switch (fp->state) {
  case 131:
  case 136:
    FsmInitRestartCounter(fp, FSM_REQ_TIMER);
    FsmSendConfigReq(fp);
    break;
  case 132:
    (*fp->fn->LayerDown)(fp);
    FsmSendConfigReq(fp);
    NewState(fp, 131);
    (*fp->parent->LayerDown)(fp->parent->object, fp);
    break;
  case 137:
    FsmSendConfigReq(fp);
    NewState(fp, 131);
    break;
  }
  m_freem(bp);
}
