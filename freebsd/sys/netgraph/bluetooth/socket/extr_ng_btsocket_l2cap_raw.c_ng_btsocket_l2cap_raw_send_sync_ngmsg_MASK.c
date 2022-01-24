#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  token; } ;
struct ng_mesg {TYPE_1__ header; } ;
typedef  TYPE_4__* ng_btsocket_l2cap_raw_pcb_p ;
struct TYPE_10__ {int cmd; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; TYPE_3__ header; } ;
struct TYPE_11__ {TYPE_6__* msg; int /*<<< orphan*/  token; int /*<<< orphan*/  pcb_mtx; TYPE_2__* rt; } ;
struct TYPE_9__ {int /*<<< orphan*/  hook; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  NGM_L2CAP_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct ng_mesg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PCATCH ; 
 int PZERO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int) ; 
 int hz ; 
 int FUNC4 (TYPE_6__**,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int ng_btsocket_l2cap_raw_ioctl_timeout ; 
 int /*<<< orphan*/  ng_btsocket_l2cap_raw_node ; 

__attribute__((used)) static int
FUNC7(ng_btsocket_l2cap_raw_pcb_p pcb,
		int cmd, void *rsp, int rsplen)
{
	struct ng_mesg	*msg = NULL;
	int		 error = 0;

	FUNC5(&pcb->pcb_mtx, MA_OWNED);

	FUNC1(msg, NGM_L2CAP_COOKIE, cmd, 0, M_NOWAIT);
	if (msg == NULL)
		return (ENOMEM);

	FUNC6(&msg->header.token);
	pcb->token = msg->header.token;
	pcb->msg = NULL;

	FUNC2(error, ng_btsocket_l2cap_raw_node, msg,
		pcb->rt->hook, 0);
	if (error != 0) {
		pcb->token = 0;
		return (error);
	}

	error = FUNC4(&pcb->msg, &pcb->pcb_mtx, PZERO|PCATCH, "l2ctl",
			ng_btsocket_l2cap_raw_ioctl_timeout * hz);
	pcb->token = 0;

	if (error != 0)
		return (error);

	if (pcb->msg != NULL && pcb->msg->header.cmd == cmd)
		FUNC3(pcb->msg->data, rsp, rsplen);
	else
		error = EINVAL;

	FUNC0(pcb->msg); /* checks for != NULL */

	return (0);
}