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
struct vif {int dummy; } ;
struct mbuf {int m_len; } ;
struct ip {int ip_hl; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct mbuf* FUNC2 (struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC3 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vif*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC5(struct ip *ip, struct vif *vifp, struct mbuf *m)
{
    struct mbuf *mb_copy;
    int hlen = ip->ip_hl << 2;

    FUNC1();

    /*
     * Make a new reference to the packet; make sure that
     * the IP header is actually copied, not just referenced,
     * so that ip_output() only scribbles on the copy.
     */
    mb_copy = FUNC2(m, M_NOWAIT);
    if (mb_copy && (!FUNC0(mb_copy) || mb_copy->m_len < hlen))
	mb_copy = FUNC3(mb_copy, hlen);
    if (mb_copy == NULL)
	return;

    FUNC4(vifp, mb_copy);
}