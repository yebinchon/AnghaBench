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
typedef  TYPE_1__* ng_btsocket_sco_pcb_p ;
struct TYPE_6__ {scalar_t__ state; int flags; int /*<<< orphan*/  pcb_mtx; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EINVAL ; 
 scalar_t__ NG_BTSOCKET_SCO_CLOSED ; 
 scalar_t__ NG_BTSOCKET_SCO_DISCONNECTING ; 
 scalar_t__ NG_BTSOCKET_SCO_OPEN ; 
 int NG_BTSOCKET_SCO_TIMO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ng_btsocket_sco_node ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 

int
FUNC8(struct socket *so)
{
	ng_btsocket_sco_pcb_p	pcb = FUNC5(so);

	if (pcb == NULL)
		return (EINVAL);
	if (ng_btsocket_sco_node == NULL) 
		return (EINVAL);

	FUNC0(&pcb->pcb_mtx);

	if (pcb->state == NG_BTSOCKET_SCO_DISCONNECTING) {
		FUNC1(&pcb->pcb_mtx);

		return (EINPROGRESS);
	}

	if (pcb->flags & NG_BTSOCKET_SCO_TIMO)
		FUNC4(pcb);

	if (pcb->state == NG_BTSOCKET_SCO_OPEN) {
		FUNC2(pcb);

		pcb->state = NG_BTSOCKET_SCO_DISCONNECTING;
		FUNC7(so);

		FUNC3(pcb);
	} else {
		pcb->state = NG_BTSOCKET_SCO_CLOSED;
		FUNC6(so);
	}

	FUNC1(&pcb->pcb_mtx);

	return (0);
}