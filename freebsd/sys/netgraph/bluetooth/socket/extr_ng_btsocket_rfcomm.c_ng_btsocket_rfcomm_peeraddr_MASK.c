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
struct sockaddr_rfcomm {int rfcomm_len; int /*<<< orphan*/  rfcomm_family; int /*<<< orphan*/  rfcomm_channel; int /*<<< orphan*/  rfcomm_bdaddr; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  TYPE_1__* ng_btsocket_rfcomm_pcb_p ;
struct TYPE_3__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 (struct socket*) ; 
 struct sockaddr* FUNC2 (struct sockaddr*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct socket *so, struct sockaddr **nam)
{
	ng_btsocket_rfcomm_pcb_p	pcb = FUNC1(so);
	struct sockaddr_rfcomm		sa;

	if (pcb == NULL)
		return (EINVAL);

	FUNC0(&pcb->dst, &sa.rfcomm_bdaddr, sizeof(sa.rfcomm_bdaddr));
	sa.rfcomm_channel = pcb->channel;
	sa.rfcomm_len = sizeof(sa);
	sa.rfcomm_family = AF_BLUETOOTH;

	*nam = FUNC2((struct sockaddr *) &sa, M_NOWAIT);

	return ((*nam == NULL)? ENOMEM : 0);
}