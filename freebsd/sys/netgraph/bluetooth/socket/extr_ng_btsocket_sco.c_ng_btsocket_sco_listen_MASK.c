#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct socket {int dummy; } ;
typedef  TYPE_1__* ng_btsocket_sco_pcb_p ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_3__ {int /*<<< orphan*/  pcb_mtx; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int EDESTADDRREQ ; 
 int EINVAL ; 
 int /*<<< orphan*/  NG_HCI_BDADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ng_btsocket_sco_node ; 
 TYPE_1__* FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,int) ; 
 int FUNC7 (struct socket*) ; 

int
FUNC8(struct socket *so, int backlog, struct thread *td)
{
	ng_btsocket_sco_pcb_p	pcb = FUNC5(so);
	int			error;

	if (pcb == NULL)
		return (EINVAL);
	if (ng_btsocket_sco_node == NULL)
		return (EINVAL);

	FUNC0(so);
	FUNC3(&pcb->pcb_mtx);

	error = FUNC7(so);
	if (error != 0)
		goto out;
#if 0
	if (bcmp(&pcb->src, NG_HCI_BDADDR_ANY, sizeof(bdaddr_t)) == 0) {
		error = EDESTADDRREQ;
		goto out;
	}
#endif
	FUNC6(so, backlog);
out:
	FUNC4(&pcb->pcb_mtx);
	FUNC1(so);

	return (error);
}