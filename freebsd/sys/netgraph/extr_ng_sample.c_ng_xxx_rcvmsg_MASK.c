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
typedef  TYPE_2__* xxx_p ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct ngxxxstat {int /*<<< orphan*/  packets_out; int /*<<< orphan*/  packets_in; } ;
struct TYPE_4__ {int typecookie; int arglen; int /*<<< orphan*/  cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  packets_out; int /*<<< orphan*/  packets_in; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_XXX_COOKIE 130 
#define  NGM_XXX_GET_STATUS 129 
#define  NGM_XXX_SET_FLAG 128 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 

__attribute__((used)) static int
FUNC5(node_p node, item_p item, hook_p lasthook)
{
	const xxx_p xxxp = FUNC3(node);
	struct ng_mesg *resp = NULL;
	int error = 0;
	struct ng_mesg *msg;

	FUNC0(item, msg);
	/* Deal with message according to cookie and command */
	switch (msg->header.typecookie) {
	case NGM_XXX_COOKIE:
		switch (msg->header.cmd) {
		case NGM_XXX_GET_STATUS:
		    {
			struct ngxxxstat *stats;

			FUNC2(resp, msg, sizeof(*stats), M_NOWAIT);
			if (!resp) {
				error = ENOMEM;
				break;
			}
			stats = (struct ngxxxstat *) resp->data;
			stats->packets_in = xxxp->packets_in;
			stats->packets_out = xxxp->packets_out;
			break;
		    }
		case NGM_XXX_SET_FLAG:
			if (msg->header.arglen != sizeof(u_int32_t)) {
				error = EINVAL;
				break;
			}
			xxxp->flags = *((u_int32_t *) msg->data);
			break;
		default:
			error = EINVAL;		/* unknown command */
			break;
		}
		break;
	default:
		error = EINVAL;			/* unknown cookie type */
		break;
	}

	/* Take care of synchronous response, if any */
	FUNC4(error, node, item, resp);
	/* Free the message and return */
	FUNC1(msg);
	return(error);
}