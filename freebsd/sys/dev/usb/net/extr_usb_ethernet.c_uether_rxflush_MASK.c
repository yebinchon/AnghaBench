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
struct usb_ether {int /*<<< orphan*/  ue_rxq; struct ifnet* ue_ifp; } ;
struct mbuf {int /*<<< orphan*/ * m_nextpkt; } ;
struct ifnet {int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 struct mbuf* FUNC2 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ether*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ether*) ; 
 int /*<<< orphan*/  m_stailqpkt ; 
 struct mbuf* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,struct mbuf*) ; 

void
FUNC8(struct usb_ether *ue)
{
	struct ifnet *ifp = ue->ue_ifp;
	struct epoch_tracker et;
	struct mbuf *m, *n;

	FUNC4(ue, MA_OWNED);

	n = FUNC6(&ue->ue_rxq);
	FUNC5(ue);
	FUNC0(et);
	while ((m = n) != NULL) {
		n = FUNC2(m, m_stailqpkt);
		m->m_nextpkt = NULL;
		ifp->if_input(ifp, m);
	}
	FUNC1(et);
	FUNC3(ue);
}