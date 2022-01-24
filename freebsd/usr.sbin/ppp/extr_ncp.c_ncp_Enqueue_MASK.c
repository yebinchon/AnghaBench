#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ipcp {unsigned int Queue; } ;
struct ipv6cp {unsigned int Queue; } ;
struct ncp {struct ipcp ipcp; struct ipv6cp ipv6cp; } ;
struct mbuf {int m_offset; int m_len; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 unsigned int FUNC0 (struct ipcp*) ; 
 unsigned int FUNC1 (struct ipcp*) ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  MB_IPOUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,struct mbuf*) ; 
 struct mbuf* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC7(struct ncp *ncp, int af, unsigned pri, char *ptr, int count)
{
#ifndef NOINET6
  struct ipv6cp *ipv6cp = &ncp->ipv6cp;
#endif
  struct ipcp *ipcp = &ncp->ipcp;
  struct mbuf *bp;

  /*
   * We allocate an extra 6 bytes, four at the front and two at the end.
   * This is an optimisation so that we need to do less work in
   * m_prepend() in acf_LayerPush() and proto_LayerPush() and
   * appending in hdlc_LayerPush().
   */

  switch (af) {
  case AF_INET:
    if (pri >= FUNC0(ipcp)) {
      FUNC3(LogERROR, "Can't store in ip queue %u\n", pri);
      break;
    }

    bp = FUNC5(count + 6, MB_IPOUT);
    bp->m_offset += 4;
    bp->m_len -= 6;
    FUNC6(FUNC2(bp), ptr, count);
    FUNC4(ipcp->Queue + pri, bp);
    break;

#ifndef NOINET6
  case AF_INET6:
    if (pri >= FUNC1(ipcp)) {
      FUNC3(LogERROR, "Can't store in ipv6 queue %u\n", pri);
      break;
    }

    bp = FUNC5(count + 6, MB_IPOUT);
    bp->m_offset += 4;
    bp->m_len -= 6;
    FUNC6(FUNC2(bp), ptr, count);
    FUNC4(ipv6cp->Queue + pri, bp);
    break;
#endif

  default:
      FUNC3(LogERROR, "Can't enqueue protocol family %d\n", af);
  }
}