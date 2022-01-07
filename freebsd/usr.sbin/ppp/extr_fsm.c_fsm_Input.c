
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct mbuf {int m_len; } ;
struct fsmheader {int code; int id; int length; } ;
struct fsmcodedesc {int (* recv ) (struct fsm*,struct fsmheader*,struct mbuf*) ;scalar_t__ check_reqid; scalar_t__ inc_reqid; int name; } ;
struct fsm {int min_code; int max_code; int reqid; int bundle; int state; TYPE_1__* link; int LogLevel; } ;
struct TYPE_2__ {int name; } ;


 int CODE_CODEREJ ;
 scalar_t__ Enabled (int ,int ) ;
 struct fsmcodedesc* FsmCodes ;
 int LogWARN ;
 int MBUF_CTOP (struct mbuf*) ;
 int MB_UNKNOWN ;
 int OPT_IDCHECK ;
 int State2Nam (int ) ;
 int fsm_Output (struct fsm*,int ,int ,int ,int ,int ) ;
 int log_Printf (int ,char*,int ,size_t,int,...) ;
 int m_freem (struct mbuf*) ;
 size_t m_length (struct mbuf*) ;
 struct mbuf* m_prepend (struct mbuf*,struct fsmheader*,int,int ) ;
 struct mbuf* m_pullup (struct mbuf*) ;
 struct mbuf* mbuf_Read (struct mbuf*,struct fsmheader*,int) ;
 size_t ntohs (int ) ;
 int stub1 (struct fsm*,struct fsmheader*,struct mbuf*) ;

void
fsm_Input(struct fsm *fp, struct mbuf *bp)
{
  size_t len;
  struct fsmheader lh;
  const struct fsmcodedesc *codep;

  len = m_length(bp);
  if (len < sizeof(struct fsmheader)) {
    m_freem(bp);
    return;
  }
  bp = mbuf_Read(bp, &lh, sizeof lh);

  if (ntohs(lh.length) > len) {
    log_Printf(LogWARN, "%s: Oops: Got %zu bytes but %d byte payload "
               "- dropped\n", fp->link->name, len, (int)ntohs(lh.length));
    m_freem(bp);
    return;
  }

  if (lh.code < fp->min_code || lh.code > fp->max_code ||
      lh.code > sizeof FsmCodes / sizeof *FsmCodes) {




    static u_char id;

    bp = m_prepend(bp, &lh, sizeof lh, 0);
    bp = m_pullup(bp);
    fsm_Output(fp, CODE_CODEREJ, id++, MBUF_CTOP(bp), bp->m_len, MB_UNKNOWN);
    m_freem(bp);
    return;
  }

  codep = FsmCodes + lh.code - 1;
  if (lh.id != fp->reqid && codep->check_reqid &&
      Enabled(fp->bundle, OPT_IDCHECK)) {
    log_Printf(fp->LogLevel, "%s: Recv%s(%d), dropped (expected %d)\n",
               fp->link->name, codep->name, lh.id, fp->reqid);
    return;
  }

  log_Printf(fp->LogLevel, "%s: Recv%s(%d) state = %s\n",
             fp->link->name, codep->name, lh.id, State2Nam(fp->state));

  if (codep->inc_reqid && (lh.id == fp->reqid ||
      (!Enabled(fp->bundle, OPT_IDCHECK) && codep->check_reqid)))
    fp->reqid++;

  (*codep->recv)(fp, &lh, bp);
}
