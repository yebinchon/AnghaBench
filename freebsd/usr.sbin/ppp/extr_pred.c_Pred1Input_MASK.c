#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  int u_char ;
struct pred1_state {int dummy; } ;
struct mbuf {int m_len; scalar_t__ m_offset; } ;
struct TYPE_4__ {TYPE_1__* link; } ;
struct ccp {int uncompin; int compin; TYPE_2__ fsm; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int GOODFCS ; 
 int /*<<< orphan*/  LogCCP ; 
 int /*<<< orphan*/  LogDEBUG ; 
 scalar_t__ MAX_MRU ; 
 int* FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  MB_CCPIN ; 
 int /*<<< orphan*/  FUNC1 (struct pred1_state*,int*,int*,int) ; 
 int FUNC2 (struct pred1_state*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 struct mbuf* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mbuf*) ; 

__attribute__((used)) static struct mbuf *
FUNC9(void *v, struct ccp *ccp, u_short *proto, struct mbuf *bp)
{
  struct pred1_state *state = (struct pred1_state *)v;
  u_char *cp, *pp;
  int len, olen, len1;
  struct mbuf *wp;
  u_char *bufp;
  u_short fcs;

  wp = FUNC7(MAX_MRU + 2, MB_CCPIN);
  cp = FUNC0(bp);
  olen = FUNC8(bp);
  pp = bufp = FUNC0(wp);
  *pp++ = *cp & 0177;
  len = *cp++ << 8;
  *pp++ = *cp;
  len += *cp++;
  ccp->uncompin += len & 0x7fff;
  if (len & 0x8000) {
    len1 = FUNC2(state, cp, pp, olen - 4);
    ccp->compin += olen;
    len &= 0x7fff;
    if (len != len1) {		/* Error is detected. Send reset request */
      FUNC5(LogCCP, "Pred1: Length error (got %d, not %d)\n", len1, len);
      FUNC3(&ccp->fsm);
      FUNC6(bp);
      FUNC6(wp);
      return NULL;
    }
    cp += olen - 4;
    pp += len1;
  } else if (len + 4 != olen) {
    FUNC5(LogCCP, "Pred1: Length error (got %d, not %d)\n", len + 4, olen);
    FUNC3(&ccp->fsm);
    FUNC6(wp);
    FUNC6(bp);
    return NULL;
  } else {
    ccp->compin += len;
    FUNC1(state, cp, pp, len);
    cp += len;
    pp += len;
  }
  *pp++ = *cp++;		/* CRC */
  *pp++ = *cp++;
  fcs = FUNC4(bufp, wp->m_len = pp - bufp);
  if (fcs == GOODFCS) {
    wp->m_offset += 2;		/* skip length */
    wp->m_len -= 4;		/* skip length & CRC */
    pp = FUNC0(wp);
    *proto = *pp++;
    if (*proto & 1) {
      wp->m_offset++;
      wp->m_len--;
    } else {
      wp->m_offset += 2;
      wp->m_len -= 2;
      *proto = (*proto << 8) | *pp++;
    }
    FUNC6(bp);
    return wp;
  } else {
    const char *pre = *FUNC0(bp) & 0x80 ? "" : "un";
    FUNC5(LogDEBUG, "Pred1Input: fcs = 0x%04x (%scompressed), len = 0x%x,"
	      " olen = 0x%x\n", fcs, pre, len, olen);
    FUNC5(LogCCP, "%s: Bad %scompressed CRC-16\n",
               ccp->fsm.link->name, pre);
    FUNC3(&ccp->fsm);
    FUNC6(wp);
  }
  FUNC6(bp);
  return NULL;
}