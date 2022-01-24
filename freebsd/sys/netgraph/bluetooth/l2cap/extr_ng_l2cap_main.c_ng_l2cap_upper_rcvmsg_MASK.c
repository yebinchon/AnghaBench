#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int typecookie; int /*<<< orphan*/  cmd; } ;
struct ng_mesg {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  ng_l2cap_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;

/* Variables and functions */
 struct ng_mesg* FUNC0 (int /*<<< orphan*/ ) ; 
#define  NGM_L2CAP_COOKIE 141 
#define  NGM_L2CAP_L2CA_CFG 140 
#define  NGM_L2CAP_L2CA_CFG_RSP 139 
#define  NGM_L2CAP_L2CA_CON 138 
#define  NGM_L2CAP_L2CA_CON_RSP 137 
#define  NGM_L2CAP_L2CA_DISCON 136 
#define  NGM_L2CAP_L2CA_ENABLE_CLT 135 
#define  NGM_L2CAP_L2CA_GET_INFO 134 
#define  NGM_L2CAP_L2CA_GRP_ADD_MEMBER 133 
#define  NGM_L2CAP_L2CA_GRP_CLOSE 132 
#define  NGM_L2CAP_L2CA_GRP_CREATE 131 
#define  NGM_L2CAP_L2CA_GRP_MEMBERSHIP 130 
#define  NGM_L2CAP_L2CA_GRP_REM_MEMBER 129 
#define  NGM_L2CAP_L2CA_PING 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct ng_mesg*) ; 

__attribute__((used)) static int
FUNC17(node_p node, item_p item, hook_p lasthook)
{
	ng_l2cap_p	 l2cap = (ng_l2cap_p) FUNC2(node);
	struct ng_mesg	*msg = FUNC0(item); /* item still has message */
	int		 error = 0;

	switch (msg->header.typecookie) {
	case NGM_L2CAP_COOKIE:
		switch (msg->header.cmd) {
		/* L2CA_Connect */
		case NGM_L2CAP_L2CA_CON:
			error = FUNC6(l2cap, msg);
			break;

		/* L2CA_ConnectRsp */
		case NGM_L2CAP_L2CA_CON_RSP:
			error = FUNC7(l2cap, msg);
			break;

		/* L2CA_Config */
		case NGM_L2CAP_L2CA_CFG:
			error = FUNC4(l2cap, msg);
			break;

		/* L2CA_ConfigRsp */
		case NGM_L2CAP_L2CA_CFG_RSP:
			error = FUNC5(l2cap, msg);
			break;

		/* L2CA_Disconnect */
		case NGM_L2CAP_L2CA_DISCON:
			error = FUNC8(l2cap, msg);
			break;

		/* L2CA_GroupCreate */
		case NGM_L2CAP_L2CA_GRP_CREATE:
			error = FUNC13(l2cap, msg);
			break;

		/* L2CA_GroupClose */
		case NGM_L2CAP_L2CA_GRP_CLOSE:
			error = FUNC12(l2cap, msg);
			break;

		/* L2CA_GroupAddMember */
		case NGM_L2CAP_L2CA_GRP_ADD_MEMBER:
			error = FUNC11(l2cap, msg);
			break;

		/* L2CA_GroupDeleteMember */
		case NGM_L2CAP_L2CA_GRP_REM_MEMBER:
			error = FUNC15(l2cap, msg);
			break;

		/* L2CA_GroupMembership */
		case NGM_L2CAP_L2CA_GRP_MEMBERSHIP:
			error = FUNC14(l2cap, msg);
			break;

		/* L2CA_Ping */
		case NGM_L2CAP_L2CA_PING:
			error = FUNC16(l2cap, msg);
			break;

		/* L2CA_GetInfo */
		case NGM_L2CAP_L2CA_GET_INFO:
			error = FUNC10(l2cap, msg);
			break;

		/* L2CA_EnableCLT */
		case NGM_L2CAP_L2CA_ENABLE_CLT:
			error = FUNC9(l2cap, msg);
			break;

		default:
			return (FUNC3(node, item, lasthook));
			/* NOT REACHED */
		}
		break;

	default:
		return (FUNC3(node, item, lasthook));
		/* NOT REACHED */
	}

	FUNC1(item);

	return (error);
}