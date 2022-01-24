#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct socket {scalar_t__ so_type; scalar_t__ so_pcb; } ;
typedef  TYPE_2__* ng_btsocket_hci_raw_pcb_p ;
typedef  scalar_t__ caddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  event_mask; } ;
struct TYPE_7__ {int /*<<< orphan*/  pcb_mtx; TYPE_1__ filter; int /*<<< orphan*/  flags; struct socket* so; } ;

/* Variables and functions */
 int BLUETOOTH_PROTO_HCI ; 
 int EISCONN ; 
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NETGRAPH_BTSOCKET_HCI_RAW ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NG_BTSOCKET_HCI_RAW_PRIVILEGED ; 
 int /*<<< orphan*/  NG_BTSOCKET_HCI_RAW_RECVSPACE ; 
 int /*<<< orphan*/  NG_BTSOCKET_HCI_RAW_SENDSPACE ; 
 scalar_t__ NG_HCI_EVENT_COMMAND_COMPL ; 
 scalar_t__ NG_HCI_EVENT_COMMAND_STATUS ; 
 int /*<<< orphan*/  PRIV_NETBLUETOOTH_RAW ; 
 scalar_t__ SOCK_RAW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/ * ng_btsocket_hci_raw_node ; 
 int /*<<< orphan*/  ng_btsocket_hci_raw_sockets ; 
 int /*<<< orphan*/  ng_btsocket_hci_raw_sockets_mtx ; 
 scalar_t__ FUNC6 (struct thread*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (struct socket*) ; 
 int FUNC8 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct socket *so, int proto, struct thread *td)
{
	ng_btsocket_hci_raw_pcb_p	pcb = FUNC7(so);
	int				error = 0;

	if (pcb != NULL)
		return (EISCONN);

	if (ng_btsocket_hci_raw_node == NULL)
		return (EPROTONOSUPPORT);
	if (proto != BLUETOOTH_PROTO_HCI)
		return (EPROTONOSUPPORT);
	if (so->so_type != SOCK_RAW)
		return (ESOCKTNOSUPPORT);

	error = FUNC8(so, NG_BTSOCKET_HCI_RAW_SENDSPACE,
				NG_BTSOCKET_HCI_RAW_RECVSPACE);
	if (error != 0)
		return (error);

	pcb = FUNC2(sizeof(*pcb), 
		M_NETGRAPH_BTSOCKET_HCI_RAW, M_NOWAIT|M_ZERO);
	if (pcb == NULL)
		return (ENOMEM);

	so->so_pcb = (caddr_t) pcb;
	pcb->so = so;

	if (FUNC6(td, PRIV_NETBLUETOOTH_RAW) == 0)
		pcb->flags |= NG_BTSOCKET_HCI_RAW_PRIVILEGED;

	/*
	 * Set default socket filter. By default socket only accepts HCI
	 * Command_Complete and Command_Status event packets.
	 */

	FUNC1(pcb->filter.event_mask, NG_HCI_EVENT_COMMAND_COMPL - 1);
	FUNC1(pcb->filter.event_mask, NG_HCI_EVENT_COMMAND_STATUS - 1);

	FUNC3(&pcb->pcb_mtx, "btsocks_hci_raw_pcb_mtx", NULL, MTX_DEF);

	FUNC4(&ng_btsocket_hci_raw_sockets_mtx);
	FUNC0(&ng_btsocket_hci_raw_sockets, pcb, next);
	FUNC5(&ng_btsocket_hci_raw_sockets_mtx);

	return (0);
}