#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ng_tcpmss_hookstat {int dummy; } ;
struct ng_tcpmss_config {char* inHook; char* outHook; int /*<<< orphan*/  maxMSS; } ;
struct TYPE_6__ {int typecookie; int const cmd; int arglen; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  TYPE_2__* hpriv_p ;
typedef  int /*<<< orphan*/ * hook_p ;
struct TYPE_8__ {int /*<<< orphan*/  maxMSS; } ;
struct TYPE_7__ {TYPE_3__ stats; int /*<<< orphan*/ * outHook; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_TCPMSS_CLR_STATS 132 
#define  NGM_TCPMSS_CONFIG 131 
#define  NGM_TCPMSS_COOKIE 130 
#define  NGM_TCPMSS_GETCLR_STATS 129 
#define  NGM_TCPMSS_GET_STATS 128 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*) ; 
 int NG_HOOKSIZ ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC9
(node_p node, item_p item, hook_p lasthook)
{
	struct ng_mesg *msg, *resp = NULL;
	int error = 0;

	FUNC1(item, msg);

	switch (msg->header.typecookie) {
	case NGM_TCPMSS_COOKIE:
		switch (msg->header.cmd) {
		case NGM_TCPMSS_GET_STATS:
		case NGM_TCPMSS_CLR_STATS:
		case NGM_TCPMSS_GETCLR_STATS:
		    {
			hook_p hook;
			hpriv_p priv;

			/* Check that message is long enough. */
			if (msg->header.arglen != NG_HOOKSIZ)
				FUNC0(EINVAL);

			/* Find this hook. */
			hook = FUNC8(node, (char *)msg->data);
			if (hook == NULL)
				FUNC0(ENOENT);

			priv = FUNC3(hook);

			/* Create response. */
			if (msg->header.cmd != NGM_TCPMSS_CLR_STATS) {
				FUNC4(resp, msg,
				    sizeof(struct ng_tcpmss_hookstat), M_NOWAIT);
				if (resp == NULL)
					FUNC0(ENOMEM);
				FUNC6(&priv->stats, resp->data,
				    sizeof(struct ng_tcpmss_hookstat));	
			}

			if (msg->header.cmd != NGM_TCPMSS_GET_STATS)
				FUNC7(&priv->stats,
				    sizeof(struct ng_tcpmss_hookstat));
			break;
		    }
		case NGM_TCPMSS_CONFIG:
		    {
			struct ng_tcpmss_config *set;
			hook_p in, out;
			hpriv_p priv;

			/* Check that message is long enough. */
			if (msg->header.arglen !=
			    sizeof(struct ng_tcpmss_config))
				FUNC0(EINVAL);

			set = (struct ng_tcpmss_config *)msg->data;
			in = FUNC8(node, set->inHook);
			out = FUNC8(node, set->outHook);
			if (in == NULL || out == NULL)
				FUNC0(ENOENT);

			/* Configure MSS hack. */
			priv = FUNC3(in);
			priv->outHook = out;
			priv->stats.maxMSS = set->maxMSS;

			break;
 		    }
		default:
			error = EINVAL;
			break;
		}
		break;
	default:
		error = EINVAL;
		break;
	}

done:
	FUNC5(error, node, item, resp);
	FUNC2(msg);

	return (error);
}