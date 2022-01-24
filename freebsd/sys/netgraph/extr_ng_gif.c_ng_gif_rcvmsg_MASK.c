#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_5__ {int typecookie; int /*<<< orphan*/  cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef  TYPE_3__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_7__ {TYPE_2__* ifp; } ;
struct TYPE_6__ {int /*<<< orphan*/  if_index; int /*<<< orphan*/  if_xname; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_GIF_COOKIE 130 
#define  NGM_GIF_GET_IFINDEX 129 
#define  NGM_GIF_GET_IFNAME 128 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(node_p node, item_p item, hook_p lasthook)
{
	const priv_p priv = FUNC3(node);
	struct ng_mesg *resp = NULL;
	int error = 0;
	struct ng_mesg *msg;

	FUNC0(item, msg);
	switch (msg->header.typecookie) {
	case NGM_GIF_COOKIE:
		switch (msg->header.cmd) {
		case NGM_GIF_GET_IFNAME:
			FUNC2(resp, msg, IFNAMSIZ, M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			FUNC5(resp->data, priv->ifp->if_xname, IFNAMSIZ);
			break;
		case NGM_GIF_GET_IFINDEX:
			FUNC2(resp, msg, sizeof(u_int32_t), M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			*((u_int32_t *)resp->data) = priv->ifp->if_index;
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
	FUNC4(error, node, item, resp);
	FUNC1(msg);
	return (error);
}