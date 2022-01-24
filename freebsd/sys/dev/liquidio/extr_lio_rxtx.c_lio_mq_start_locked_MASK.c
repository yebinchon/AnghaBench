#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
struct lio_instr_queue {int /*<<< orphan*/  br; } ;
struct TYPE_4__ {int /*<<< orphan*/  link_up; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
struct TYPE_6__ {TYPE_2__ link; } ;
struct lio {TYPE_3__ linfo; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC2 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,struct mbuf*) ; 
 int FUNC4 (struct ifnet*) ; 
 struct lio* FUNC5 (struct ifnet*) ; 
 int FUNC6 (struct lio*,struct lio_instr_queue*,struct mbuf**) ; 

int
FUNC7(struct ifnet *ifp, struct lio_instr_queue *iq)
{
	struct lio	*lio = FUNC5(ifp);
	struct mbuf	*next;
	int		err = 0;

	if (((FUNC4(ifp) & IFF_DRV_RUNNING) == 0) ||
	    (!lio->linfo.link.s.link_up))
		return (-ENETDOWN);

	/* Process the queue */
	while ((next = FUNC2(ifp, iq->br)) != NULL) {
		err = FUNC6(lio, iq, &next);
		if (err) {
			if (next == NULL)
				FUNC1(ifp, iq->br);
			else
				FUNC3(ifp, iq->br, next);
			break;
		}
		FUNC1(ifp, iq->br);
		/* Send a copy of the frame to the BPF listener */
		FUNC0(ifp, next);
		if (((FUNC4(ifp) & IFF_DRV_RUNNING) == 0) ||
		    (!lio->linfo.link.s.link_up))
			break;
	}

	return (err);
}