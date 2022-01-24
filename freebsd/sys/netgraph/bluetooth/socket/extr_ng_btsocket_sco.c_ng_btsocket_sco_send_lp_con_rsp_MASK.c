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
struct ng_mesg {scalar_t__ data; } ;
struct TYPE_4__ {int status; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  link_type; } ;
typedef  TYPE_1__ ng_hci_lp_con_rsp_ep ;
typedef  TYPE_2__* ng_btsocket_sco_rtentry_p ;
typedef  int /*<<< orphan*/  bdaddr_p ;
struct TYPE_5__ {int /*<<< orphan*/ * hook; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  NGM_HCI_COOKIE ; 
 int /*<<< orphan*/  NGM_HCI_LP_CON_RSP ; 
 int /*<<< orphan*/  NG_HCI_LINK_SCO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct ng_mesg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ng_btsocket_sco_node ; 

__attribute__((used)) static int
FUNC4(ng_btsocket_sco_rtentry_p rt, bdaddr_p dst, int status)
{
	struct ng_mesg		*msg = NULL;
	ng_hci_lp_con_rsp_ep	*ep = NULL;
	int			 error = 0;

	if (rt == NULL || rt->hook == NULL || FUNC0(rt->hook))
		return (ENETDOWN); 

	FUNC1(msg, NGM_HCI_COOKIE, NGM_HCI_LP_CON_RSP,
		sizeof(*ep), M_NOWAIT);
	if (msg == NULL)
		return (ENOMEM);

	ep = (ng_hci_lp_con_rsp_ep *)(msg->data);
	ep->status = status;
	ep->link_type = NG_HCI_LINK_SCO;
	FUNC3(dst, &ep->bdaddr, sizeof(ep->bdaddr));

	FUNC2(error, ng_btsocket_sco_node, msg, rt->hook, 0);

	return (error);
}