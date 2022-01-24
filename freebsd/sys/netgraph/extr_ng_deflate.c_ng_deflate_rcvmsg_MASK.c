#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ typecookie; int cmd; int arglen; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
struct ng_deflate_stats {int dummy; } ;
struct ng_deflate_config {int windowBits; int /*<<< orphan*/  enable; } ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_10__ {int /*<<< orphan*/  msg; int /*<<< orphan*/ * next_in; } ;
struct TYPE_9__ {int /*<<< orphan*/  stats; int /*<<< orphan*/  ctrlnode; int /*<<< orphan*/  seqnum; struct ng_deflate_config cfg; TYPE_3__ cx; int /*<<< orphan*/  compress; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  NGM_DEFLATE_CLR_STATS 132 
#define  NGM_DEFLATE_CONFIG 131 
 scalar_t__ NGM_DEFLATE_COOKIE ; 
#define  NGM_DEFLATE_GETCLR_STATS 130 
#define  NGM_DEFLATE_GET_STATS 129 
#define  NGM_DEFLATE_RESETREQ 128 
 int /*<<< orphan*/  FUNC3 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC4 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  Z_DEFAULT_COMPRESSION ; 
 int /*<<< orphan*/  Z_DEFAULT_STRATEGY ; 
 int /*<<< orphan*/  Z_DEFLATED ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(node_p node, item_p item, hook_p lasthook)
{
	const priv_p priv = FUNC5(node);
	struct ng_mesg *resp = NULL;
	int error = 0;
	struct ng_mesg *msg;

	FUNC1(item, msg);

	if (msg->header.typecookie != NGM_DEFLATE_COOKIE)
		FUNC0(EINVAL);

	switch (msg->header.cmd) {
	case NGM_DEFLATE_CONFIG:
	    {
		struct ng_deflate_config *const cfg
		    = (struct ng_deflate_config *)msg->data;

		/* Check configuration. */
		if (msg->header.arglen != sizeof(*cfg))
			FUNC0(EINVAL);
		if (cfg->enable) {
		    if (cfg->windowBits < 8 || cfg->windowBits > 15)
			FUNC0(EINVAL);
		} else
		    cfg->windowBits = 0;

		/* Clear previous state. */
		if (priv->cfg.enable) {
			if (priv->compress)
				FUNC9(&priv->cx);
			else
				FUNC11(&priv->cx);
			priv->cfg.enable = 0;
		}

		/* Configuration is OK, reset to it. */
		priv->cfg = *cfg;

		if (priv->cfg.enable) {
			priv->cx.next_in = NULL;
			int res;
			if (priv->compress) {
				if ((res = FUNC10(&priv->cx,
				    Z_DEFAULT_COMPRESSION, Z_DEFLATED,
				    -cfg->windowBits, 8,
				    Z_DEFAULT_STRATEGY)) != Z_OK) {
					FUNC13(LOG_NOTICE,
					    "deflateInit2: error %d, %s\n",
					    res, priv->cx.msg);
					priv->cfg.enable = 0;
					FUNC0(ENOMEM);
				}
			} else {
				if ((res = FUNC12(&priv->cx,
				    -cfg->windowBits)) != Z_OK) {
					FUNC13(LOG_NOTICE,
					    "inflateInit2: error %d, %s\n",
					    res, priv->cx.msg);
					priv->cfg.enable = 0;
					FUNC0(ENOMEM);
				}
			}
		}

		/* Initialize other state. */
		priv->seqnum = 0;

		/* Save return address so we can send reset-req's */
		priv->ctrlnode = FUNC2(item);
		break;
	    }

	case NGM_DEFLATE_RESETREQ:
		FUNC14(node);
		break;

	case NGM_DEFLATE_GET_STATS:
	case NGM_DEFLATE_CLR_STATS:
	case NGM_DEFLATE_GETCLR_STATS:
		/* Create response if requested. */
		if (msg->header.cmd != NGM_DEFLATE_CLR_STATS) {
			FUNC4(resp, msg,
			    sizeof(struct ng_deflate_stats), M_NOWAIT);
			if (resp == NULL)
				FUNC0(ENOMEM);
			FUNC7(&priv->stats, resp->data,
			    sizeof(struct ng_deflate_stats));
		}

		/* Clear stats if requested. */
		if (msg->header.cmd != NGM_DEFLATE_GET_STATS)
			FUNC8(&priv->stats,
			    sizeof(struct ng_deflate_stats));
		break;

	default:
		error = EINVAL;
		break;
	}
done:
	FUNC6(error, node, item, resp);
	FUNC3(msg);
	return (error);
}