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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int typecookie; int /*<<< orphan*/  cmd; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_index; int /*<<< orphan*/  if_xname; } ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {struct ifnet* ifp; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int IFF_BROADCAST ; 
 int IFF_POINTOPOINT ; 
 int IFF_UP ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_FLOW_COOKIE 135 
#define  NGM_IFACE_BROADCAST 134 
#define  NGM_IFACE_COOKIE 133 
#define  NGM_IFACE_GET_IFINDEX 132 
#define  NGM_IFACE_GET_IFNAME 131 
#define  NGM_IFACE_POINT2POINT 130 
#define  NGM_LINK_IS_DOWN 129 
#define  NGM_LINK_IS_UP 128 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(node_p node, item_p item, hook_p lasthook)
{
	const priv_p priv = FUNC3(node);
	struct ifnet *const ifp = priv->ifp;
	struct ng_mesg *resp = NULL;
	int error = 0;
	struct ng_mesg *msg;

	FUNC0(item, msg);
	switch (msg->header.typecookie) {
	case NGM_IFACE_COOKIE:
		switch (msg->header.cmd) {
		case NGM_IFACE_GET_IFNAME:
			FUNC2(resp, msg, IFNAMSIZ, M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			FUNC6(resp->data, ifp->if_xname, IFNAMSIZ);
			break;

		case NGM_IFACE_POINT2POINT:
		case NGM_IFACE_BROADCAST:
		    {

			/* Deny request if interface is UP */
			if ((ifp->if_flags & IFF_UP) != 0)
				return (EBUSY);

			/* Change flags */
			switch (msg->header.cmd) {
			case NGM_IFACE_POINT2POINT:
				ifp->if_flags |= IFF_POINTOPOINT;
				ifp->if_flags &= ~IFF_BROADCAST;
				break;
			case NGM_IFACE_BROADCAST:
				ifp->if_flags &= ~IFF_POINTOPOINT;
				ifp->if_flags |= IFF_BROADCAST;
				break;
			}
			break;
		    }

		case NGM_IFACE_GET_IFINDEX:
			FUNC2(resp, msg, sizeof(uint32_t), M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			*((uint32_t *)resp->data) = priv->ifp->if_index;
			break;

		default:
			error = EINVAL;
			break;
		}
		break;
	case NGM_FLOW_COOKIE:
		switch (msg->header.cmd) {
		case NGM_LINK_IS_UP:
			FUNC5(ifp, LINK_STATE_UP);
			break;
		case NGM_LINK_IS_DOWN:
			FUNC5(ifp, LINK_STATE_DOWN);
			break;
		default:
			break;
		}
		break;
	default:
		error = EINVAL;
		break;
	}
	FUNC4(error, node, item, resp);
	FUNC1(msg);
	return (error);
}