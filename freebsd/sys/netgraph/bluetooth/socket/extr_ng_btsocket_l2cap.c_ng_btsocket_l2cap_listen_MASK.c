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
typedef  TYPE_1__* ng_btsocket_l2cap_pcb_p ;
struct TYPE_3__ {scalar_t__ psm; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int /*<<< orphan*/ * ng_btsocket_l2cap_node ; 
 TYPE_1__* FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int) ; 
 int FUNC4 (struct socket*) ; 

int
FUNC5(struct socket *so, int backlog, struct thread *td)
{
	ng_btsocket_l2cap_pcb_p	pcb = FUNC2(so);
	int error;

	FUNC0(so);
	error = FUNC4(so);
	if (error != 0)
		goto out;
	if (pcb == NULL) {
		error = EINVAL;
		goto out;
	}
	if (ng_btsocket_l2cap_node == NULL) {
		error = EINVAL;
		goto out;
	}
	if (pcb->psm == 0) {
		error = EADDRNOTAVAIL;
		goto out;
	}
	FUNC3(so, backlog);
out:
	FUNC1(so);
	return (error);
}