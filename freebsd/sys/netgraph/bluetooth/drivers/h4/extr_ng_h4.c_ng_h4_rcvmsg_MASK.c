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
struct TYPE_8__ {int typecookie; int arglen; int /*<<< orphan*/  cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int ng_h4_node_state_ep ;
typedef  int /*<<< orphan*/  ng_h4_node_stat_ep ;
typedef  int ng_h4_node_qlen_ep ;
typedef  int ng_h4_node_debug_ep ;
typedef  TYPE_2__* ng_h4_info_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_10__ {int ifq_maxlen; } ;
struct TYPE_9__ {int debug; int state; int got; int want; int /*<<< orphan*/  stat; TYPE_3__ outq; int /*<<< orphan*/ * hook; } ;

/* Variables and functions */
 int EHOSTDOWN ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_GENERIC_COOKIE 138 
#define  NGM_H4_COOKIE 137 
#define  NGM_H4_NODE_GET_DEBUG 136 
#define  NGM_H4_NODE_GET_QLEN 135 
#define  NGM_H4_NODE_GET_STAT 134 
#define  NGM_H4_NODE_GET_STATE 133 
#define  NGM_H4_NODE_RESET 132 
#define  NGM_H4_NODE_RESET_STAT 131 
#define  NGM_H4_NODE_SET_DEBUG 130 
#define  NGM_H4_NODE_SET_QLEN 129 
#define  NGM_TEXT_STATUS 128 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*) ; 
 char* NG_H4_HOOK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int NG_H4_W4_PKT_IND ; 
 int /*<<< orphan*/  FUNC6 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int NG_TEXTRESPONSE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int,char*,char*,int,int,int,int,int,int) ; 

__attribute__((used)) static int
FUNC13(node_p node, item_p item, hook_p lasthook)
{
	ng_h4_info_p	 sc = (ng_h4_info_p) FUNC7(node);
	struct ng_mesg	*msg = NULL, *resp = NULL;
	int		 error = 0;

	if (sc == NULL)
		return (EHOSTDOWN);

	FUNC1(item, msg);
	FUNC3(sc);

	switch (msg->header.typecookie) {
	case NGM_GENERIC_COOKIE:
		switch (msg->header.cmd) {
		case NGM_TEXT_STATUS:
			FUNC6(resp, msg, NG_TEXTRESPONSE, M_NOWAIT);
			if (resp == NULL)
				error = ENOMEM;
			else
				FUNC12(resp->data, NG_TEXTRESPONSE,
					"Hook: %s\n"   \
					"Debug: %d\n"  \
					"State: %d\n"  \
					"Queue: [have:%d,max:%d]\n" \
					"Input: [got:%d,want:%d]",
					(sc->hook != NULL)? NG_H4_HOOK : "",
					sc->debug,
					sc->state,
					FUNC10(&sc->outq),
					sc->outq.ifq_maxlen,
					sc->got,
					sc->want);
			break;

		default:
			error = EINVAL;
			break;
		}
		break;

	case NGM_H4_COOKIE:
		switch (msg->header.cmd) {
		case NGM_H4_NODE_RESET:
			FUNC9(&sc->outq); 
			sc->state = NG_H4_W4_PKT_IND;
			sc->want = 1;
			sc->got = 0;
			break;

		case NGM_H4_NODE_GET_STATE:
			FUNC6(resp, msg, sizeof(ng_h4_node_state_ep),
				M_NOWAIT);
			if (resp == NULL)
				error = ENOMEM;
			else
				*((ng_h4_node_state_ep *)(resp->data)) = 
					sc->state;
			break;

		case NGM_H4_NODE_GET_DEBUG:
			FUNC6(resp, msg, sizeof(ng_h4_node_debug_ep),
				M_NOWAIT);
			if (resp == NULL)
				error = ENOMEM;
			else
				*((ng_h4_node_debug_ep *)(resp->data)) = 
					sc->debug;
			break;

		case NGM_H4_NODE_SET_DEBUG:
			if (msg->header.arglen != sizeof(ng_h4_node_debug_ep))
				error = EMSGSIZE;
			else
				sc->debug =
					*((ng_h4_node_debug_ep *)(msg->data));
			break;

		case NGM_H4_NODE_GET_QLEN:
			FUNC6(resp, msg, sizeof(ng_h4_node_qlen_ep),
				M_NOWAIT);
			if (resp == NULL)
				error = ENOMEM;
			else
				*((ng_h4_node_qlen_ep *)(resp->data)) = 
					sc->outq.ifq_maxlen;
			break;

		case NGM_H4_NODE_SET_QLEN:
			if (msg->header.arglen != sizeof(ng_h4_node_qlen_ep))
				error = EMSGSIZE;
			else if (*((ng_h4_node_qlen_ep *)(msg->data)) <= 0)
				error = EINVAL;
			else
				FUNC0(&sc->outq,
					*((ng_h4_node_qlen_ep *)(msg->data)));
			break;

		case NGM_H4_NODE_GET_STAT:
			FUNC6(resp, msg, sizeof(ng_h4_node_stat_ep),
				M_NOWAIT);
			if (resp == NULL)
				error = ENOMEM;
			else
				FUNC11(&sc->stat, resp->data,
					sizeof(ng_h4_node_stat_ep));
			break;

		case NGM_H4_NODE_RESET_STAT:
			FUNC4(sc->stat);
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

	FUNC5(sc);

	FUNC8(error, node, item, resp);
	FUNC2(msg);

	return (error);
}