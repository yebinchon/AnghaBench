#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcphdr {int dummy; } ;
struct mbuf {int dummy; } ;
struct ip {int ip_hl; scalar_t__ ip_p; int /*<<< orphan*/  ip_len; int /*<<< orphan*/  ip_off; } ;
struct bundle {TYPE_1__* iface; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bundle*,int /*<<< orphan*/ ) ; 
 scalar_t__ IPPROTO_TCP ; 
 size_t IP_OFFMASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcphdr*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_TCPMSSFIXUP ; 
 size_t FUNC4 (struct mbuf*) ; 
 struct mbuf* FUNC5 (struct mbuf*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mbuf *
FUNC7(struct bundle *bundle, struct mbuf *bp)
{
  struct ip *pip;
  size_t hlen, plen;

  if (!FUNC0(bundle, OPT_TCPMSSFIXUP))
    return bp;

  bp = FUNC5(bp);
  plen = FUNC4(bp);
  pip = (struct ip *)FUNC2(bp);
  hlen = pip->ip_hl << 2;

  /*
   * Check for MSS option only for TCP packets with zero fragment offsets
   * and correct total and header lengths.
   */
  if (pip->ip_p == IPPROTO_TCP && (FUNC6(pip->ip_off) & IP_OFFMASK) == 0 &&
      FUNC6(pip->ip_len) == plen && hlen <= plen &&
      plen >= sizeof(struct tcphdr) + hlen)
    FUNC3((struct tcphdr *)(FUNC2(bp) + hlen), plen - hlen,
             FUNC1(bundle->iface->mtu));

  return bp;
}