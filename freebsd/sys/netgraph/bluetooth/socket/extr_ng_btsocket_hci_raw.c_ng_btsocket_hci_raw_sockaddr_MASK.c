#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct sockaddr_hci {int hci_len; int /*<<< orphan*/  hci_node; int /*<<< orphan*/  hci_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  TYPE_2__* ng_btsocket_hci_raw_pcb_p ;
struct TYPE_4__ {int /*<<< orphan*/  hci_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  pcb_mtx; TYPE_1__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_hci*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ng_btsocket_hci_raw_node ; 
 TYPE_2__* FUNC3 (struct socket*) ; 
 struct sockaddr* FUNC4 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC6(struct socket *so, struct sockaddr **nam)
{
	ng_btsocket_hci_raw_pcb_p	pcb = FUNC3(so);
	struct sockaddr_hci		sa;

	if (pcb == NULL)
		return (EINVAL);
	if (ng_btsocket_hci_raw_node == NULL)
		return (EINVAL);

	FUNC0(&sa, sizeof(sa));
	sa.hci_len = sizeof(sa);
	sa.hci_family = AF_BLUETOOTH;

	FUNC1(&pcb->pcb_mtx);
	FUNC5(sa.hci_node, pcb->addr.hci_node, sizeof(sa.hci_node));
	FUNC2(&pcb->pcb_mtx);

	*nam = FUNC4((struct sockaddr *) &sa, M_NOWAIT);

	return ((*nam == NULL)? ENOMEM : 0);
}