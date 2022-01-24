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
struct sockaddr_sco {int sco_len; int /*<<< orphan*/  sco_family; int /*<<< orphan*/  sco_bdaddr; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  TYPE_1__* ng_btsocket_sco_pcb_p ;
struct TYPE_3__ {int /*<<< orphan*/  pcb_mtx; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ng_btsocket_sco_node ; 
 TYPE_1__* FUNC3 (struct socket*) ; 
 struct sockaddr* FUNC4 (struct sockaddr*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct socket *so, struct sockaddr **nam)
{
	ng_btsocket_sco_pcb_p	pcb = FUNC3(so);
	struct sockaddr_sco	sa;

	if (pcb == NULL)
		return (EINVAL);
	if (ng_btsocket_sco_node == NULL) 
		return (EINVAL);

	FUNC1(&pcb->pcb_mtx);
	FUNC0(&pcb->dst, &sa.sco_bdaddr, sizeof(sa.sco_bdaddr));
	FUNC2(&pcb->pcb_mtx);

	sa.sco_len = sizeof(sa);
	sa.sco_family = AF_BLUETOOTH;

	*nam = FUNC4((struct sockaddr *) &sa, M_NOWAIT);

	return ((*nam == NULL)? ENOMEM : 0);
}