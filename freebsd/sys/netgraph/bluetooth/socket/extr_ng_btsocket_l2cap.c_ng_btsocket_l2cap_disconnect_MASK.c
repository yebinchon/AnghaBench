#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
typedef  TYPE_1__* ng_btsocket_l2cap_pcb_p ;
struct TYPE_6__ {scalar_t__ state; int flags; int /*<<< orphan*/  pcb_mtx; int /*<<< orphan*/  token; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EINVAL ; 
 scalar_t__ NG_BTSOCKET_L2CAP_CLOSED ; 
 scalar_t__ NG_BTSOCKET_L2CAP_DISCONNECTING ; 
 int NG_BTSOCKET_L2CAP_TIMO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ng_btsocket_l2cap_node ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 

int
FUNC7(struct socket *so)
{
	ng_btsocket_l2cap_pcb_p	pcb = FUNC5(so);
	int			error = 0;

	if (pcb == NULL)
		return (EINVAL);
	if (ng_btsocket_l2cap_node == NULL) 
		return (EINVAL);

	FUNC0(&pcb->pcb_mtx);

	if (pcb->state == NG_BTSOCKET_L2CAP_DISCONNECTING) {
		FUNC1(&pcb->pcb_mtx);
		return (EINPROGRESS);
	}

	if (pcb->state != NG_BTSOCKET_L2CAP_CLOSED) {
		/* XXX FIXME what to do with pending request? */
		if (pcb->flags & NG_BTSOCKET_L2CAP_TIMO)
			FUNC4(pcb);

		error = FUNC2(pcb->token, pcb);
		if (error == 0) {
			pcb->state = NG_BTSOCKET_L2CAP_DISCONNECTING;
			FUNC6(so);

			FUNC3(pcb);
		}

		/* XXX FIXME what to do if error != 0 */
	}

	FUNC1(&pcb->pcb_mtx);

	return (error);
}