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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {int typecookie; int arglen; int /*<<< orphan*/  cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
struct ng_async_stat {int dummy; } ;
struct ng_async_cfg {int enabled; int /*<<< orphan*/  amru; int /*<<< orphan*/  smru; } ;
typedef  TYPE_2__* sc_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {struct ng_async_cfg cfg; int /*<<< orphan*/  slen; void* amode; int /*<<< orphan*/ * sbuf; int /*<<< orphan*/ * abuf; struct ng_async_stat stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* MODE_HUNT ; 
 int /*<<< orphan*/  M_NETGRAPH_ASYNC ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_ASYNC_CMD_CLR_STATS 132 
#define  NGM_ASYNC_CMD_GET_CONFIG 131 
#define  NGM_ASYNC_CMD_GET_STATS 130 
#define  NGM_ASYNC_CMD_SET_CONFIG 129 
#define  NGM_ASYNC_COOKIE 128 
 int /*<<< orphan*/  NG_ASYNC_MAX_MRU ; 
 int /*<<< orphan*/  NG_ASYNC_MIN_MRU ; 
 int /*<<< orphan*/  FUNC3 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC4 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ng_async_stat*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(node_p node, item_p item, hook_p lasthook)
{
	const sc_p sc = FUNC5(node);
	struct ng_mesg *resp = NULL;
	int error = 0;
	struct ng_mesg *msg;
	
	FUNC2(item, msg);
	switch (msg->header.typecookie) {
	case NGM_ASYNC_COOKIE:
		switch (msg->header.cmd) {
		case NGM_ASYNC_CMD_GET_STATS:
			FUNC4(resp, msg, sizeof(sc->stats), M_NOWAIT);
			if (resp == NULL)
				FUNC1(ENOMEM);
			*((struct ng_async_stat *) resp->data) = sc->stats;
			break;
		case NGM_ASYNC_CMD_CLR_STATS:
			FUNC8(&sc->stats, sizeof(sc->stats));
			break;
		case NGM_ASYNC_CMD_SET_CONFIG:
		    {
			struct ng_async_cfg *const cfg =
				(struct ng_async_cfg *) msg->data;
			u_char *buf;

			if (msg->header.arglen != sizeof(*cfg))
				FUNC1(EINVAL);
			if (cfg->amru < NG_ASYNC_MIN_MRU
			    || cfg->amru > NG_ASYNC_MAX_MRU
			    || cfg->smru < NG_ASYNC_MIN_MRU
			    || cfg->smru > NG_ASYNC_MAX_MRU)
				FUNC1(EINVAL);
			cfg->enabled = !!cfg->enabled;	/* normalize */
			if (cfg->smru > sc->cfg.smru) {	/* reallocate buffer */
				buf = FUNC10(FUNC0(cfg->smru),
				    M_NETGRAPH_ASYNC, M_NOWAIT);
				if (!buf)
					FUNC1(ENOMEM);
				FUNC9(sc->abuf, M_NETGRAPH_ASYNC);
				sc->abuf = buf;
			}
			if (cfg->amru > sc->cfg.amru) {	/* reallocate buffer */
				buf = FUNC10(FUNC7(cfg->amru),
				    M_NETGRAPH_ASYNC, M_NOWAIT);
				if (!buf)
					FUNC1(ENOMEM);
				FUNC9(sc->sbuf, M_NETGRAPH_ASYNC);
				sc->sbuf = buf;
				sc->amode = MODE_HUNT;
				sc->slen = 0;
			}
			if (!cfg->enabled) {
				sc->amode = MODE_HUNT;
				sc->slen = 0;
			}
			sc->cfg = *cfg;
			break;
		    }
		case NGM_ASYNC_CMD_GET_CONFIG:
			FUNC4(resp, msg, sizeof(sc->cfg), M_NOWAIT);
			if (!resp)
				FUNC1(ENOMEM);
			*((struct ng_async_cfg *) resp->data) = sc->cfg;
			break;
		default:
			FUNC1(EINVAL);
		}
		break;
	default:
		FUNC1(EINVAL);
	}
done:
	FUNC6(error, node, item, resp);
	FUNC3(msg);
	return (error);
}