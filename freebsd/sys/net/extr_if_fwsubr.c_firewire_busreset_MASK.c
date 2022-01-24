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
struct mbuf {struct mbuf* m_nextpkt; } ;
struct ifnet {int dummy; } ;
struct fw_reass {struct mbuf* fr_frags; } ;
struct fw_com {int /*<<< orphan*/  fc_frags; } ;

/* Variables and functions */
 struct fw_com* FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  M_TEMP ; 
 struct fw_reass* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fr_link ; 
 int /*<<< orphan*/  FUNC3 (struct fw_reass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 

void
FUNC5(struct ifnet *ifp)
{
	struct fw_com *fc = FUNC0(ifp);
	struct fw_reass *r;
	struct mbuf *m;

	/*
	 * Discard any partial datagrams since the host ids may have changed.
	 */
	while ((r = FUNC1(&fc->fc_frags))) {
		FUNC2(&fc->fc_frags, fr_link);
		while (r->fr_frags) {
			m = r->fr_frags;
			r->fr_frags = m->m_nextpkt;
			FUNC4(m);
		}
		FUNC3(r, M_TEMP);
	}
}