
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct pred1_state {int dummy; } ;
struct mbuf {int m_len; scalar_t__ m_offset; } ;
struct TYPE_4__ {TYPE_1__* link; } ;
struct ccp {int uncompin; int compin; TYPE_2__ fsm; } ;
struct TYPE_3__ {int name; } ;


 int GOODFCS ;
 int LogCCP ;
 int LogDEBUG ;
 scalar_t__ MAX_MRU ;
 int* MBUF_CTOP (struct mbuf*) ;
 int MB_CCPIN ;
 int SyncTable (struct pred1_state*,int*,int*,int) ;
 int decompress (struct pred1_state*,int*,int*,int) ;
 int fsm_Reopen (TYPE_2__*) ;
 int hdlc_Fcs (int*,int) ;
 int log_Printf (int ,char*,int,...) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_get (scalar_t__,int ) ;
 int m_length (struct mbuf*) ;

__attribute__((used)) static struct mbuf *
Pred1Input(void *v, struct ccp *ccp, u_short *proto, struct mbuf *bp)
{
  struct pred1_state *state = (struct pred1_state *)v;
  u_char *cp, *pp;
  int len, olen, len1;
  struct mbuf *wp;
  u_char *bufp;
  u_short fcs;

  wp = m_get(MAX_MRU + 2, MB_CCPIN);
  cp = MBUF_CTOP(bp);
  olen = m_length(bp);
  pp = bufp = MBUF_CTOP(wp);
  *pp++ = *cp & 0177;
  len = *cp++ << 8;
  *pp++ = *cp;
  len += *cp++;
  ccp->uncompin += len & 0x7fff;
  if (len & 0x8000) {
    len1 = decompress(state, cp, pp, olen - 4);
    ccp->compin += olen;
    len &= 0x7fff;
    if (len != len1) {
      log_Printf(LogCCP, "Pred1: Length error (got %d, not %d)\n", len1, len);
      fsm_Reopen(&ccp->fsm);
      m_freem(bp);
      m_freem(wp);
      return ((void*)0);
    }
    cp += olen - 4;
    pp += len1;
  } else if (len + 4 != olen) {
    log_Printf(LogCCP, "Pred1: Length error (got %d, not %d)\n", len + 4, olen);
    fsm_Reopen(&ccp->fsm);
    m_freem(wp);
    m_freem(bp);
    return ((void*)0);
  } else {
    ccp->compin += len;
    SyncTable(state, cp, pp, len);
    cp += len;
    pp += len;
  }
  *pp++ = *cp++;
  *pp++ = *cp++;
  fcs = hdlc_Fcs(bufp, wp->m_len = pp - bufp);
  if (fcs == GOODFCS) {
    wp->m_offset += 2;
    wp->m_len -= 4;
    pp = MBUF_CTOP(wp);
    *proto = *pp++;
    if (*proto & 1) {
      wp->m_offset++;
      wp->m_len--;
    } else {
      wp->m_offset += 2;
      wp->m_len -= 2;
      *proto = (*proto << 8) | *pp++;
    }
    m_freem(bp);
    return wp;
  } else {
    const char *pre = *MBUF_CTOP(bp) & 0x80 ? "" : "un";
    log_Printf(LogDEBUG, "Pred1Input: fcs = 0x%04x (%scompressed), len = 0x%x,"
       " olen = 0x%x\n", fcs, pre, len, olen);
    log_Printf(LogCCP, "%s: Bad %scompressed CRC-16\n",
               ccp->fsm.link->name, pre);
    fsm_Reopen(&ccp->fsm);
    m_freem(wp);
  }
  m_freem(bp);
  return ((void*)0);
}
