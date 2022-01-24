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
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_5__ {scalar_t__ state; int flags; int /*<<< orphan*/  pcb_mtx; TYPE_1__* so; } ;
typedef  TYPE_2__ ng_btsocket_rfcomm_pcb_t ;
struct TYPE_4__ {int /*<<< orphan*/  so_snd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 scalar_t__ NG_BTSOCKET_RFCOMM_DLC_CONNECTED ; 
 int NG_BTSOCKET_RFCOMM_DLC_SENDING ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mbuf*,int) ; 
 TYPE_2__* FUNC5 (struct socket*) ; 

int
FUNC6(struct socket *so, int flags, struct mbuf *m,
		struct sockaddr *nam, struct mbuf *control, struct thread *td)
{
	ng_btsocket_rfcomm_pcb_t	*pcb = FUNC5(so);
	int				 error = 0;

	/* Check socket and input */
	if (pcb == NULL || m == NULL || control != NULL) {
		error = EINVAL;
		goto drop;
	}

	FUNC1(&pcb->pcb_mtx);

	/* Make sure DLC is connected */
	if (pcb->state != NG_BTSOCKET_RFCOMM_DLC_CONNECTED) {
		FUNC2(&pcb->pcb_mtx);
		error = ENOTCONN;
		goto drop;
	}

	/* Put the packet on the socket's send queue and wakeup RFCOMM task */
	FUNC4(&pcb->so->so_snd, m, flags);
	m = NULL;
	
	if (!(pcb->flags & NG_BTSOCKET_RFCOMM_DLC_SENDING)) {
		pcb->flags |= NG_BTSOCKET_RFCOMM_DLC_SENDING;
		error = FUNC3();
	}

	FUNC2(&pcb->pcb_mtx);
drop:
	FUNC0(m); /* checks for != NULL */
	FUNC0(control);

	return (error);
}