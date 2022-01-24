#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int u_char ;
struct sockaddr_dl {int sdl_len; int sdl_alen; void* sdl_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_11__ {int typecookie; int arglen; int /*<<< orphan*/  cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
struct ifmultiaddr {int dummy; } ;
struct epoch_tracker {int dummy; } ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_13__ {int if_index; int /*<<< orphan*/  if_xname; } ;
struct TYPE_12__ {int promisc; int autoSrcAddr; TYPE_3__* ifp; } ;

/* Variables and functions */
 void* AF_LINK ; 
 int EADDRINUSE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ETHER_ADDR_LEN ; 
 int IFNAMSIZ ; 
 void* FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC2 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC3 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_ETHER_ADD_MULTI 139 
#define  NGM_ETHER_COOKIE 138 
#define  NGM_ETHER_DEL_MULTI 137 
#define  NGM_ETHER_DETACH 136 
#define  NGM_ETHER_GET_AUTOSRC 135 
#define  NGM_ETHER_GET_ENADDR 134 
#define  NGM_ETHER_GET_IFINDEX 133 
#define  NGM_ETHER_GET_IFNAME 132 
#define  NGM_ETHER_GET_PROMISC 131 
#define  NGM_ETHER_SET_AUTOSRC 130 
#define  NGM_ETHER_SET_ENADDR 129 
#define  NGM_ETHER_SET_PROMISC 128 
 int /*<<< orphan*/  FUNC5 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC6 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC9 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_dl*,int) ; 
 int FUNC11 (TYPE_3__*,struct sockaddr*,struct ifmultiaddr**) ; 
 int FUNC12 (TYPE_3__*,struct sockaddr*) ; 
 struct ifmultiaddr* FUNC13 (TYPE_3__*,struct sockaddr*) ; 
 int FUNC14 (TYPE_3__*,int*,int) ; 
 int FUNC15 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC18(node_p node, item_p item, hook_p lasthook)
{
	const priv_p priv = FUNC7(node);
	struct ng_mesg *resp = NULL;
	int error = 0;
	struct ng_mesg *msg;

	FUNC4(item, msg);
	switch (msg->header.typecookie) {
	case NGM_ETHER_COOKIE:
		switch (msg->header.cmd) {
		case NGM_ETHER_GET_IFNAME:
			FUNC6(resp, msg, IFNAMSIZ, M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			FUNC17(resp->data, priv->ifp->if_xname, IFNAMSIZ);
			break;
		case NGM_ETHER_GET_IFINDEX:
			FUNC6(resp, msg, sizeof(u_int32_t), M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			*((u_int32_t *)resp->data) = priv->ifp->if_index;
			break;
		case NGM_ETHER_GET_ENADDR:
			FUNC6(resp, msg, ETHER_ADDR_LEN, M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			FUNC9(FUNC0(priv->ifp),
			    resp->data, ETHER_ADDR_LEN);
			break;
		case NGM_ETHER_SET_ENADDR:
		    {
			if (msg->header.arglen != ETHER_ADDR_LEN) {
				error = EINVAL;
				break;
			}
			error = FUNC14(priv->ifp,
			    (u_char *)msg->data, ETHER_ADDR_LEN);
			break;
		    }
		case NGM_ETHER_GET_PROMISC:
			FUNC6(resp, msg, sizeof(u_int32_t), M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			*((u_int32_t *)resp->data) = priv->promisc;
			break;
		case NGM_ETHER_SET_PROMISC:
		    {
			u_char want;

			if (msg->header.arglen != sizeof(u_int32_t)) {
				error = EINVAL;
				break;
			}
			want = !!*((u_int32_t *)msg->data);
			if (want ^ priv->promisc) {
				if ((error = FUNC15(priv->ifp, want)) != 0)
					break;
				priv->promisc = want;
			}
			break;
		    }
		case NGM_ETHER_GET_AUTOSRC:
			FUNC6(resp, msg, sizeof(u_int32_t), M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			*((u_int32_t *)resp->data) = priv->autoSrcAddr;
			break;
		case NGM_ETHER_SET_AUTOSRC:
			if (msg->header.arglen != sizeof(u_int32_t)) {
				error = EINVAL;
				break;
			}
			priv->autoSrcAddr = !!*((u_int32_t *)msg->data);
			break;
		case NGM_ETHER_ADD_MULTI:
		    {
			struct sockaddr_dl sa_dl;
			struct epoch_tracker et;
			struct ifmultiaddr *ifma;

			if (msg->header.arglen != ETHER_ADDR_LEN) {
				error = EINVAL;
				break;
			}
			FUNC10(&sa_dl, sizeof(struct sockaddr_dl));
			sa_dl.sdl_len = sizeof(struct sockaddr_dl);
			sa_dl.sdl_family = AF_LINK;
			sa_dl.sdl_alen = ETHER_ADDR_LEN;
			FUNC9((void *)msg->data, FUNC1(&sa_dl),
			    ETHER_ADDR_LEN);
			/*
			 * Netgraph is only permitted to join groups once
			 * via the if_addmulti() KPI, because it cannot hold
			 * struct ifmultiaddr * between calls. It may also
			 * lose a race while we check if the membership
			 * already exists.
			 */
			FUNC2(et);
			ifma = FUNC13(priv->ifp,
			    (struct sockaddr *)&sa_dl);
			FUNC3(et);
			if (ifma != NULL) {
				error = EADDRINUSE;
			} else {
				error = FUNC11(priv->ifp,
				    (struct sockaddr *)&sa_dl, &ifma);
			}
			break;
		    }
		case NGM_ETHER_DEL_MULTI:
		    {
			struct sockaddr_dl sa_dl;

			if (msg->header.arglen != ETHER_ADDR_LEN) {
				error = EINVAL;
				break;
			}
			FUNC10(&sa_dl, sizeof(struct sockaddr_dl));
			sa_dl.sdl_len = sizeof(struct sockaddr_dl);
			sa_dl.sdl_family = AF_LINK;
			sa_dl.sdl_alen = ETHER_ADDR_LEN;
			FUNC9((void *)msg->data, FUNC1(&sa_dl),
			    ETHER_ADDR_LEN);
			error = FUNC12(priv->ifp,
			    (struct sockaddr *)&sa_dl);
			break;
		    }
		case NGM_ETHER_DETACH:
			FUNC16(priv->ifp);
			break;
		default:
			error = EINVAL;
			break;
		}
		break;
	default:
		error = EINVAL;
		break;
	}
	FUNC8(error, node, item, resp);
	FUNC5(msg);
	return (error);
}