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
struct sppp {int dummy; } ;
struct TYPE_5__ {int typecookie; int /*<<< orphan*/  cmd; } ;
struct ng_mesg {int /*<<< orphan*/  data; TYPE_1__ header; } ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_7__ {int /*<<< orphan*/  if_xname; } ;
struct TYPE_6__ {int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 struct sppp* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_SPPP_COOKIE 129 
#define  NGM_SPPP_GET_IFNAME 128 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ng_mesg*,struct ng_mesg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 TYPE_3__* FUNC6 (struct sppp* const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (node_p node, item_p item, hook_p lasthook)
{
	const priv_p priv = FUNC4 (node);
	struct ng_mesg *msg = NULL;
	struct ng_mesg *resp = NULL;
	struct sppp *const pp = FUNC0(priv->ifp);
	int error = 0;

	FUNC1 (item, msg);
	switch (msg->header.typecookie) {
	case NGM_SPPP_COOKIE:
		switch (msg->header.cmd) {
		case NGM_SPPP_GET_IFNAME:
			FUNC3 (resp, msg, IFNAMSIZ, M_NOWAIT);
			if (!resp) {
				error = ENOMEM;
				break;
			}
			FUNC7(resp->data, FUNC6(pp)->if_xname, IFNAMSIZ);
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
	FUNC5 (error, node, item, resp);
	FUNC2 (msg);
	return (error);
}