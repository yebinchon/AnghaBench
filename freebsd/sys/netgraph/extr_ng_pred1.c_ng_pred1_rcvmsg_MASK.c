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
struct ng_pred1_stats {int dummy; } ;
struct ng_pred1_config {int dummy; } ;
struct TYPE_4__ {scalar_t__ typecookie; int cmd; int arglen; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {int /*<<< orphan*/  stats; int /*<<< orphan*/  ctrlnode; struct ng_pred1_config cfg; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  NGM_PRED1_CLR_STATS 132 
#define  NGM_PRED1_CONFIG 131 
 scalar_t__ NGM_PRED1_COOKIE ; 
#define  NGM_PRED1_GETCLR_STATS 130 
#define  NGM_PRED1_GET_STATS 129 
#define  NGM_PRED1_RESETREQ 128 
 int /*<<< orphan*/  FUNC3 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC4 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC10(node_p node, item_p item, hook_p lasthook)
{
	const priv_p priv = FUNC5(node);
	struct ng_mesg *resp = NULL;
	int error = 0;
	struct ng_mesg *msg;

	FUNC1(item, msg);

	if (msg->header.typecookie != NGM_PRED1_COOKIE)
		FUNC0(EINVAL);

	switch (msg->header.cmd) {
	case NGM_PRED1_CONFIG:
	    {
		struct ng_pred1_config *const cfg =
		    (struct ng_pred1_config *)msg->data;

		/* Check configuration. */
		if (msg->header.arglen != sizeof(*cfg))
			FUNC0(EINVAL);

		/* Configuration is OK, reset to it. */
		priv->cfg = *cfg;

		/* Save return address so we can send reset-req's. */
		priv->ctrlnode = FUNC2(item);

		/* Clear our state. */
		FUNC7(node);

		break;
	    }
	case NGM_PRED1_RESETREQ:
		FUNC7(node);
		break;

	case NGM_PRED1_GET_STATS:
	case NGM_PRED1_CLR_STATS:
	case NGM_PRED1_GETCLR_STATS:
	    {
		/* Create response. */
		if (msg->header.cmd != NGM_PRED1_CLR_STATS) {
			FUNC4(resp, msg,
			    sizeof(struct ng_pred1_stats), M_NOWAIT);
			if (resp == NULL)
				FUNC0(ENOMEM);
			FUNC8(&priv->stats, resp->data,
			    sizeof(struct ng_pred1_stats));
		}

		if (msg->header.cmd != NGM_PRED1_GET_STATS)
			FUNC9(&priv->stats, sizeof(struct ng_pred1_stats));
		break;
	    }

	default:
		error = EINVAL;
		break;
	}
done:
	FUNC6(error, node, item, resp);
	FUNC3(msg);
	return (error);
}