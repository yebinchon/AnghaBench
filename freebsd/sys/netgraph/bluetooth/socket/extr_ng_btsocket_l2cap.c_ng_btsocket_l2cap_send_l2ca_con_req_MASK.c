#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  token; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
struct TYPE_8__ {int /*<<< orphan*/  idtype; int /*<<< orphan*/  linktype; int /*<<< orphan*/  psm; int /*<<< orphan*/  bdaddr; } ;
typedef  TYPE_3__ ng_l2cap_l2ca_con_ip ;
typedef  TYPE_4__* ng_btsocket_l2cap_pcb_p ;
struct TYPE_9__ {TYPE_2__* rt; int /*<<< orphan*/  idtype; int /*<<< orphan*/  dsttype; int /*<<< orphan*/  psm; int /*<<< orphan*/  dst; int /*<<< orphan*/  token; int /*<<< orphan*/  pcb_mtx; } ;
struct TYPE_7__ {int /*<<< orphan*/ * hook; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  NGM_L2CAP_COOKIE ; 
 int /*<<< orphan*/  NGM_L2CAP_L2CA_CON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct ng_mesg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ng_btsocket_l2cap_node ; 

__attribute__((used)) static int
FUNC6(ng_btsocket_l2cap_pcb_p pcb)
{
	struct ng_mesg		*msg = NULL;
	ng_l2cap_l2ca_con_ip	*ip = NULL;
	int			 error = 0;

	FUNC4(&pcb->pcb_mtx, MA_OWNED);

	if (pcb->rt == NULL || 
	    pcb->rt->hook == NULL || FUNC0(pcb->rt->hook))
		return (ENETDOWN); 

	FUNC1(msg, NGM_L2CAP_COOKIE, NGM_L2CAP_L2CA_CON,
		sizeof(*ip), M_NOWAIT);
	if (msg == NULL)
		return (ENOMEM);

	msg->header.token = pcb->token;

	ip = (ng_l2cap_l2ca_con_ip *)(msg->data);
	FUNC3(&pcb->dst, &ip->bdaddr, sizeof(ip->bdaddr));
	ip->psm = pcb->psm;
	ip->linktype = FUNC5(pcb->dsttype);
	ip->idtype = pcb->idtype;
	FUNC2(error, ng_btsocket_l2cap_node, msg,pcb->rt->hook, 0);

	return (error);
}