#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct socket {scalar_t__ so_type; scalar_t__ so_pcb; } ;
typedef  TYPE_1__* ng_btsocket_l2cap_raw_pcb_p ;
typedef  scalar_t__ caddr_t ;
struct TYPE_5__ {int /*<<< orphan*/  pcb_mtx; int /*<<< orphan*/  flags; struct socket* so; } ;

/* Variables and functions */
 int EISCONN ; 
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NETGRAPH_BTSOCKET_L2CAP_RAW ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NG_BTSOCKET_L2CAP_RAW_PRIVILEGED ; 
 int /*<<< orphan*/  NG_BTSOCKET_L2CAP_RAW_RECVSPACE ; 
 int /*<<< orphan*/  NG_BTSOCKET_L2CAP_RAW_SENDSPACE ; 
 int /*<<< orphan*/  PRIV_NETBLUETOOTH_RAW ; 
 scalar_t__ SOCK_RAW ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/ * ng_btsocket_l2cap_raw_node ; 
 int /*<<< orphan*/  ng_btsocket_l2cap_raw_sockets ; 
 int /*<<< orphan*/  ng_btsocket_l2cap_raw_sockets_mtx ; 
 scalar_t__ FUNC5 (struct thread*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct socket*) ; 
 int FUNC7 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(struct socket *so, int proto, struct thread *td)
{
	ng_btsocket_l2cap_raw_pcb_p	pcb = FUNC6(so);
	int				error;

	if (pcb != NULL)
		return (EISCONN);

	if (ng_btsocket_l2cap_raw_node == NULL) 
		return (EPROTONOSUPPORT);
	if (so->so_type != SOCK_RAW)
		return (ESOCKTNOSUPPORT);

	/* Reserve send and receive space if it is not reserved yet */
	error = FUNC7(so, NG_BTSOCKET_L2CAP_RAW_SENDSPACE,
			NG_BTSOCKET_L2CAP_RAW_RECVSPACE);
	if (error != 0)
		return (error);

	/* Allocate the PCB */
        pcb = FUNC1(sizeof(*pcb),
		M_NETGRAPH_BTSOCKET_L2CAP_RAW, M_NOWAIT|M_ZERO);
        if (pcb == NULL)
                return (ENOMEM);

	/* Link the PCB and the socket */
	so->so_pcb = (caddr_t) pcb;
	pcb->so = so;

	if (FUNC5(td, PRIV_NETBLUETOOTH_RAW) == 0)
		pcb->flags |= NG_BTSOCKET_L2CAP_RAW_PRIVILEGED;

	FUNC2(&pcb->pcb_mtx, "btsocks_l2cap_raw_pcb_mtx", NULL, MTX_DEF);

        /* Add the PCB to the list */
	FUNC3(&ng_btsocket_l2cap_raw_sockets_mtx);
	FUNC0(&ng_btsocket_l2cap_raw_sockets, pcb, next);
	FUNC4(&ng_btsocket_l2cap_raw_sockets_mtx);

        return (0);
}