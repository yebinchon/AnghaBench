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
struct socket {int dummy; } ;
typedef  TYPE_1__* ng_btsocket_hci_raw_pcb_p ;
struct TYPE_3__ {int /*<<< orphan*/  pcb_mtx; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ng_btsocket_hci_raw_node ; 
 TYPE_1__* FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 

int
FUNC4(struct socket *so)
{
	ng_btsocket_hci_raw_pcb_p	 pcb = FUNC2(so);

	if (pcb == NULL)
		return (EINVAL);
	if (ng_btsocket_hci_raw_node == NULL)
		return (EINVAL);

	FUNC0(&pcb->pcb_mtx);
	FUNC3(so);
	FUNC1(&pcb->pcb_mtx);

	return (0);
}