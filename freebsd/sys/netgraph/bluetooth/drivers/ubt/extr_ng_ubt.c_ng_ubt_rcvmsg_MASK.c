#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ng_bt_mbufq {int len; int maxlen; } ;
struct ubt_softc {int sc_task_flags; int sc_debug; int /*<<< orphan*/  sc_stat; struct ng_bt_mbufq sc_scoq; struct ng_bt_mbufq sc_aclq; struct ng_bt_mbufq sc_cmdq; int /*<<< orphan*/ * sc_hook; } ;
struct TYPE_3__ {int typecookie; int arglen; int /*<<< orphan*/  cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  ng_ubt_node_stat_ep ;
struct TYPE_4__ {int queue; int qlen; } ;
typedef  TYPE_2__ ng_ubt_node_qlen_ep ;
typedef  int ng_ubt_node_debug_ep ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_GENERIC_COOKIE 139 
#define  NGM_TEXT_STATUS 138 
#define  NGM_UBT_COOKIE 137 
#define  NGM_UBT_NODE_GET_DEBUG 136 
#define  NGM_UBT_NODE_GET_QLEN 135 
#define  NGM_UBT_NODE_GET_STAT 134 
#define  NGM_UBT_NODE_QUEUE_ACL 133 
#define  NGM_UBT_NODE_QUEUE_CMD 132 
#define  NGM_UBT_NODE_QUEUE_SCO 131 
#define  NGM_UBT_NODE_RESET_STAT 130 
#define  NGM_UBT_NODE_SET_DEBUG 129 
#define  NGM_UBT_NODE_SET_QLEN 128 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 struct ubt_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int NG_TEXTRESPONSE ; 
 char* NG_UBT_HOOK ; 
 int /*<<< orphan*/  FUNC5 (struct ubt_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,char*,char*,int,int,int,int,int,int,int,int) ; 

__attribute__((used)) static int
FUNC8(node_p node, item_p item, hook_p lasthook)
{
	struct ubt_softc	*sc = FUNC3(node);
	struct ng_mesg		*msg, *rsp = NULL;
	struct ng_bt_mbufq	*q;
	int			error = 0, queue, qlen;

	FUNC0(item, msg);

	switch (msg->header.typecookie) {
	case NGM_GENERIC_COOKIE:
		switch (msg->header.cmd) {
		case NGM_TEXT_STATUS:
			FUNC2(rsp, msg, NG_TEXTRESPONSE, M_NOWAIT);
			if (rsp == NULL) {
				error = ENOMEM;
				break;
			}

			FUNC7(rsp->data, NG_TEXTRESPONSE,
				"Hook: %s\n" \
				"Task flags: %#x\n" \
				"Debug: %d\n" \
				"CMD queue: [have:%d,max:%d]\n" \
				"ACL queue: [have:%d,max:%d]\n" \
				"SCO queue: [have:%d,max:%d]",
				(sc->sc_hook != NULL) ? NG_UBT_HOOK : "",
				sc->sc_task_flags,
				sc->sc_debug,
				sc->sc_cmdq.len,
				sc->sc_cmdq.maxlen,
				sc->sc_aclq.len,
				sc->sc_aclq.maxlen,
				sc->sc_scoq.len,
				sc->sc_scoq.maxlen);
			break;

		default:
			error = EINVAL;
			break;
		}
		break;

	case NGM_UBT_COOKIE:
		switch (msg->header.cmd) {
		case NGM_UBT_NODE_SET_DEBUG:
			if (msg->header.arglen != sizeof(ng_ubt_node_debug_ep)){
				error = EMSGSIZE;
				break;
			}

			sc->sc_debug = *((ng_ubt_node_debug_ep *) (msg->data));
			break;

		case NGM_UBT_NODE_GET_DEBUG:
			FUNC2(rsp, msg, sizeof(ng_ubt_node_debug_ep),
			    M_NOWAIT);
			if (rsp == NULL) {
				error = ENOMEM;
				break;
			}

			*((ng_ubt_node_debug_ep *) (rsp->data)) = sc->sc_debug;
			break;

		case NGM_UBT_NODE_SET_QLEN:
			if (msg->header.arglen != sizeof(ng_ubt_node_qlen_ep)) {
				error = EMSGSIZE;
				break;
			}

			queue = ((ng_ubt_node_qlen_ep *) (msg->data))->queue;
			qlen = ((ng_ubt_node_qlen_ep *) (msg->data))->qlen;

			switch (queue) {
			case NGM_UBT_NODE_QUEUE_CMD:
				q = &sc->sc_cmdq;
				break;

			case NGM_UBT_NODE_QUEUE_ACL:
				q = &sc->sc_aclq;
				break;

			case NGM_UBT_NODE_QUEUE_SCO:
				q = &sc->sc_scoq;
				break;

			default:
				error = EINVAL;
				goto done;
				/* NOT REACHED */
			}

			q->maxlen = qlen;
			break;

		case NGM_UBT_NODE_GET_QLEN:
			if (msg->header.arglen != sizeof(ng_ubt_node_qlen_ep)) {
				error = EMSGSIZE;
				break;
			}

			queue = ((ng_ubt_node_qlen_ep *) (msg->data))->queue;

			switch (queue) {
			case NGM_UBT_NODE_QUEUE_CMD:
				q = &sc->sc_cmdq;
				break;

			case NGM_UBT_NODE_QUEUE_ACL:
				q = &sc->sc_aclq;
				break;

			case NGM_UBT_NODE_QUEUE_SCO:
				q = &sc->sc_scoq;
				break;

			default:
				error = EINVAL;
				goto done;
				/* NOT REACHED */
			}

			FUNC2(rsp, msg, sizeof(ng_ubt_node_qlen_ep),
				M_NOWAIT);
			if (rsp == NULL) {
				error = ENOMEM;
				break;
			}

			((ng_ubt_node_qlen_ep *) (rsp->data))->queue = queue;
			((ng_ubt_node_qlen_ep *) (rsp->data))->qlen = q->maxlen;
			break;

		case NGM_UBT_NODE_GET_STAT:
			FUNC2(rsp, msg, sizeof(ng_ubt_node_stat_ep),
			    M_NOWAIT);
			if (rsp == NULL) {
				error = ENOMEM;
				break;
			}

			FUNC6(&sc->sc_stat, rsp->data,
				sizeof(ng_ubt_node_stat_ep));
			break;

		case NGM_UBT_NODE_RESET_STAT:
			FUNC5(sc);
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
done:
	FUNC4(error, node, item, rsp);
	FUNC1(msg);

	return (error);
}