
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ u_int32_t ;
typedef int u_char ;
struct mbuf {int dummy; } ;
struct lcp {scalar_t__ his_magic; int want_magic; } ;
struct fsmheader {int length; int id; } ;
struct fsm {scalar_t__ state; TYPE_1__* link; int LogLevel; } ;
struct TYPE_2__ {int name; } ;


 int CODE_ECHOREP ;
 int * MBUF_CTOP (struct mbuf*) ;
 int MB_ECHOIN ;
 int MB_ECHOOUT ;
 scalar_t__ ST_OPENED ;
 struct lcp* fsm2lcp (struct fsm*) ;
 int fsm_Output (struct fsm*,int ,int ,int *,int,int ) ;
 int log_Printf (int ,char*,int ,int ,int ) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_pullup (struct mbuf*) ;
 int m_settype (struct mbuf*,int ) ;
 int ntohs (int ) ;
 int ua_htonl (int *,int *) ;
 int ua_ntohl (int *,scalar_t__*) ;

__attribute__((used)) static void
FsmRecvEchoReq(struct fsm *fp, struct fsmheader *lhp, struct mbuf *bp)
{
  struct lcp *lcp = fsm2lcp(fp);
  u_char *cp;
  u_int32_t magic;

  bp = m_pullup(bp);
  m_settype(bp, MB_ECHOIN);

  if (lcp && ntohs(lhp->length) - sizeof *lhp >= 4) {
    cp = MBUF_CTOP(bp);
    ua_ntohl(cp, &magic);
    if (magic != lcp->his_magic) {
      log_Printf(fp->LogLevel, "%s: RecvEchoReq: magic 0x%08lx is wrong,"
                 " expecting 0x%08lx\n", fp->link->name, (u_long)magic,
                 (u_long)lcp->his_magic);

    }
    if (fp->state == ST_OPENED) {
      ua_htonl(&lcp->want_magic, cp);
      fsm_Output(fp, CODE_ECHOREP, lhp->id, cp,
                 ntohs(lhp->length) - sizeof *lhp, MB_ECHOOUT);
    }
  }
  m_freem(bp);
}
