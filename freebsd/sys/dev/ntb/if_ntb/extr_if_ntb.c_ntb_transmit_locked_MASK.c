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
struct ntb_net_queue {int /*<<< orphan*/  br; int /*<<< orphan*/  queue_full; int /*<<< orphan*/  qp; int /*<<< orphan*/  ifp; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {short m_flags; TYPE_1__ m_pkthdr; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct mbuf*,int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  IFCOUNTER_OBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OMCASTS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  KTR_NTB ; 
 short M_MCAST ; 
 int SBT_1MS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct ntb_net_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*) ; 
 int /*<<< orphan*/  ntb_qp_full ; 
 int FUNC10 (int /*<<< orphan*/ ,struct mbuf*,struct mbuf*,int) ; 

__attribute__((used)) static void
FUNC11(struct ntb_net_queue *q)
{
	if_t ifp = q->ifp;
	struct mbuf *m;
	int rc, len;
	short mflags;

	FUNC0(KTR_NTB, "TX: ntb_transmit_locked");
	while ((m = FUNC5(ifp, q->br)) != NULL) {
		FUNC1(KTR_NTB, "TX: start mbuf %p", m);
		FUNC7(ifp, m);
		len = m->m_pkthdr.len;
		mflags = m->m_flags;
		rc = FUNC10(q->qp, m, m, len);
		if (rc != 0) {
			FUNC2(KTR_NTB, "TX: could not tx mbuf %p: %d", m, rc);
			if (rc == EAGAIN) {
				FUNC6(ifp, q->br, m);
				FUNC3(&q->queue_full,
				    SBT_1MS / 4, SBT_1MS / 4,
				    ntb_qp_full, q, 0);
			} else {
				FUNC9(m);
				FUNC4(ifp, q->br);
				FUNC8(ifp, IFCOUNTER_OERRORS, 1);
			}
			break;
		}
		FUNC4(ifp, q->br);
		FUNC8(ifp, IFCOUNTER_OPACKETS, 1);
		FUNC8(ifp, IFCOUNTER_OBYTES, len);
		if (mflags & M_MCAST)
			FUNC8(ifp, IFCOUNTER_OMCASTS, 1);
	}
}