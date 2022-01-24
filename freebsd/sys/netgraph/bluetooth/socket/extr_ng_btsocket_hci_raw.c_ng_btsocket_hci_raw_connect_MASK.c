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
struct sockaddr_hci {scalar_t__ hci_family; int hci_len; scalar_t__* hci_node; } ;
struct sockaddr {int dummy; } ;
typedef  TYPE_1__* ng_btsocket_hci_raw_pcb_p ;
struct TYPE_3__ {int /*<<< orphan*/  pcb_mtx; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ AF_BLUETOOTH ; 
 int EADDRNOTAVAIL ; 
 int EAFNOSUPPORT ; 
 int EDESTADDRREQ ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct sockaddr_hci*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ng_btsocket_hci_raw_node ; 
 TYPE_1__* FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 

int
FUNC5(struct socket *so, struct sockaddr *nam,
		struct thread *td)
{
	ng_btsocket_hci_raw_pcb_p	 pcb = FUNC3(so);
	struct sockaddr_hci		*sa = (struct sockaddr_hci *) nam;

	if (pcb == NULL)
		return (EINVAL);
	if (ng_btsocket_hci_raw_node == NULL)
		return (EINVAL);

	if (sa == NULL)
		return (EINVAL);
	if (sa->hci_family != AF_BLUETOOTH)
		return (EAFNOSUPPORT);
	if (sa->hci_len != sizeof(*sa))
		return (EINVAL);
	if (sa->hci_node[0] == 0)
		return (EDESTADDRREQ);

	FUNC1(&pcb->pcb_mtx);

	if (FUNC0(sa, &pcb->addr, sizeof(pcb->addr)) != 0) {
		FUNC2(&pcb->pcb_mtx);
		return (EADDRNOTAVAIL);
	}

	FUNC4(so);

	FUNC2(&pcb->pcb_mtx);

	return (0);
}