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
struct sockaddr_l2cap {int l2cap_len; int /*<<< orphan*/  l2cap_bdaddr_type; scalar_t__ l2cap_cid; int /*<<< orphan*/  l2cap_family; int /*<<< orphan*/  l2cap_psm; int /*<<< orphan*/  l2cap_bdaddr; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  TYPE_1__* ng_btsocket_l2cap_pcb_p ;
struct TYPE_3__ {int /*<<< orphan*/  srctype; int /*<<< orphan*/  psm; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ng_btsocket_l2cap_node ; 
 TYPE_1__* FUNC2 (struct socket*) ; 
 struct sockaddr* FUNC3 (struct sockaddr*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct socket *so, struct sockaddr **nam)
{
	ng_btsocket_l2cap_pcb_p	pcb = FUNC2(so);
	struct sockaddr_l2cap	sa;

	if (pcb == NULL)
		return (EINVAL);
	if (ng_btsocket_l2cap_node == NULL) 
		return (EINVAL);

	FUNC0(&pcb->src, &sa.l2cap_bdaddr, sizeof(sa.l2cap_bdaddr));
	sa.l2cap_psm = FUNC1(pcb->psm);
	sa.l2cap_len = sizeof(sa);
	sa.l2cap_family = AF_BLUETOOTH;
	sa.l2cap_cid = 0;
	sa.l2cap_bdaddr_type = pcb->srctype;

	*nam = FUNC3((struct sockaddr *) &sa, M_NOWAIT);

	return ((*nam == NULL)? ENOMEM : 0);
}