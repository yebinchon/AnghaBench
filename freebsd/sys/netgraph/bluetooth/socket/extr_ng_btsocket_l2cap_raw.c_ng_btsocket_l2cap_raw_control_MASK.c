#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct TYPE_18__ {scalar_t__ token; int /*<<< orphan*/  cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
struct ng_btsocket_l2cap_raw_ping {int echo_size; TYPE_5__* echo_data; int /*<<< orphan*/  result; } ;
struct ng_btsocket_l2cap_raw_node_flags {int /*<<< orphan*/  flags; } ;
struct ng_btsocket_l2cap_raw_node_debug {int /*<<< orphan*/  debug; } ;
struct ng_btsocket_l2cap_raw_get_info {int info_size; TYPE_5__* info_data; int /*<<< orphan*/  result; int /*<<< orphan*/  info_type; } ;
struct ng_btsocket_l2cap_raw_con_list {int num_connections; int /*<<< orphan*/ * connections; } ;
struct ng_btsocket_l2cap_raw_chan_list {int num_channels; int /*<<< orphan*/ * channels; } ;
struct ng_btsocket_l2cap_raw_auto_discon_timo {int /*<<< orphan*/  timeout; } ;
struct ifnet {int dummy; } ;
struct TYPE_20__ {int /*<<< orphan*/  num_connections; } ;
typedef  TYPE_3__ ng_l2cap_node_con_list_ep ;
typedef  int /*<<< orphan*/  ng_l2cap_node_con_ep ;
struct TYPE_21__ {int /*<<< orphan*/  num_channels; } ;
typedef  TYPE_4__ ng_l2cap_node_chan_list_ep ;
typedef  int /*<<< orphan*/  ng_l2cap_node_chan_ep ;
struct TYPE_22__ {int /*<<< orphan*/  info_size; int /*<<< orphan*/  result; int /*<<< orphan*/  echo_size; } ;
typedef  TYPE_5__ ng_l2cap_l2ca_ping_op ;
struct TYPE_23__ {int echo_size; int /*<<< orphan*/  bdaddr; } ;
typedef  TYPE_6__ ng_l2cap_l2ca_ping_ip ;
typedef  TYPE_5__ ng_l2cap_l2ca_get_info_op ;
struct TYPE_24__ {int /*<<< orphan*/  info_type; int /*<<< orphan*/  bdaddr; } ;
typedef  TYPE_8__ ng_l2cap_l2ca_get_info_ip ;
typedef  TYPE_9__* ng_btsocket_l2cap_raw_pcb_p ;
typedef  TYPE_5__* caddr_t ;
struct TYPE_25__ {scalar_t__ token; int flags; int /*<<< orphan*/  pcb_mtx; TYPE_2__* rt; struct ng_mesg* msg; int /*<<< orphan*/  dst; } ;
struct TYPE_19__ {int /*<<< orphan*/  hook; } ;

/* Variables and functions */
 int EBUSY ; 
 int EHOSTUNREACH ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  NGM_L2CAP_COOKIE ; 
 int /*<<< orphan*/  NGM_L2CAP_L2CA_GET_INFO ; 
 int /*<<< orphan*/  NGM_L2CAP_L2CA_PING ; 
 int /*<<< orphan*/  NGM_L2CAP_NODE_GET_AUTO_DISCON_TIMO ; 
 int /*<<< orphan*/  NGM_L2CAP_NODE_GET_CHAN_LIST ; 
 int /*<<< orphan*/  NGM_L2CAP_NODE_GET_CON_LIST ; 
 int /*<<< orphan*/  NGM_L2CAP_NODE_GET_DEBUG ; 
 int /*<<< orphan*/  NGM_L2CAP_NODE_GET_FLAGS ; 
 int /*<<< orphan*/  NGM_L2CAP_NODE_SET_AUTO_DISCON_TIMO ; 
 int /*<<< orphan*/  NGM_L2CAP_NODE_SET_DEBUG ; 
 int NG_BTSOCKET_L2CAP_RAW_PRIVILEGED ; 
 int /*<<< orphan*/  FUNC0 (struct ng_mesg*) ; 
 int NG_L2CAP_MAX_CHAN_NUM ; 
 int NG_L2CAP_MAX_CON_NUM ; 
 int NG_L2CAP_MAX_ECHO_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,struct ng_mesg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PCATCH ; 
 int PZERO ; 
#define  SIOC_L2CAP_L2CA_GET_INFO 136 
#define  SIOC_L2CAP_L2CA_PING 135 
#define  SIOC_L2CAP_NODE_GET_AUTO_DISCON_TIMO 134 
#define  SIOC_L2CAP_NODE_GET_CHAN_LIST 133 
#define  SIOC_L2CAP_NODE_GET_CON_LIST 132 
#define  SIOC_L2CAP_NODE_GET_DEBUG 131 
#define  SIOC_L2CAP_NODE_GET_FLAGS 130 
#define  SIOC_L2CAP_NODE_SET_AUTO_DISCON_TIMO 129 
#define  SIOC_L2CAP_NODE_SET_DEBUG 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 () ; 
 int FUNC5 (TYPE_5__*,TYPE_6__*,int) ; 
 int FUNC6 (TYPE_5__*,TYPE_5__*,int) ; 
 int hz ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ng_mesg**,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 int ng_btsocket_l2cap_raw_ioctl_timeout ; 
 int /*<<< orphan*/ * ng_btsocket_l2cap_raw_node ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_9__* FUNC14 (struct socket*) ; 

int
FUNC15(struct socket *so, u_long cmd, caddr_t data,
		struct ifnet *ifp, struct thread *td)
{
	ng_btsocket_l2cap_raw_pcb_p	 pcb = FUNC14(so);
	struct ng_mesg			*msg = NULL;
	int				 error = 0;

	if (pcb == NULL)
		return (EINVAL);
	if (ng_btsocket_l2cap_raw_node == NULL)
		return (EINVAL);

	FUNC9(&pcb->pcb_mtx);

	/* Check if we route info */
	if (pcb->rt == NULL) {
		FUNC10(&pcb->pcb_mtx);
		return (EHOSTUNREACH);
	}

	/* Check if we have pending ioctl() */
	if (pcb->token != 0) {
		FUNC10(&pcb->pcb_mtx);
		return (EBUSY);
	}  

	switch (cmd) {
	case SIOC_L2CAP_NODE_GET_FLAGS: {
		struct ng_btsocket_l2cap_raw_node_flags	*p =
			(struct ng_btsocket_l2cap_raw_node_flags *) data;

		error = FUNC13(pcb,
				NGM_L2CAP_NODE_GET_FLAGS,
				&p->flags, sizeof(p->flags));
		} break;

	case SIOC_L2CAP_NODE_GET_DEBUG: {
		struct ng_btsocket_l2cap_raw_node_debug	*p =
			(struct ng_btsocket_l2cap_raw_node_debug *) data;

		error = FUNC13(pcb,
				NGM_L2CAP_NODE_GET_DEBUG,
				&p->debug, sizeof(p->debug));
		} break;

	case SIOC_L2CAP_NODE_SET_DEBUG: {
		struct ng_btsocket_l2cap_raw_node_debug	*p = 
			(struct ng_btsocket_l2cap_raw_node_debug *) data;

		if (pcb->flags & NG_BTSOCKET_L2CAP_RAW_PRIVILEGED)
			error = FUNC12(pcb->rt->hook,
					NGM_L2CAP_NODE_SET_DEBUG,
					&p->debug, sizeof(p->debug));
		else
			error = EPERM;
		} break;

	case SIOC_L2CAP_NODE_GET_CON_LIST: {
		struct ng_btsocket_l2cap_raw_con_list	*p =
			(struct ng_btsocket_l2cap_raw_con_list *) data;
		ng_l2cap_node_con_list_ep		*p1 = NULL;
                ng_l2cap_node_con_ep			*p2 = NULL;
 
		if (p->num_connections == 0 ||
		    p->num_connections > NG_L2CAP_MAX_CON_NUM ||
		    p->connections == NULL) {
			FUNC10(&pcb->pcb_mtx);
			return (EINVAL);
		}

		FUNC1(msg, NGM_L2CAP_COOKIE, NGM_L2CAP_NODE_GET_CON_LIST,
			0, M_NOWAIT);
		if (msg == NULL) {
			FUNC10(&pcb->pcb_mtx);
			return (ENOMEM);
		}
		FUNC11(&msg->header.token);
		pcb->token = msg->header.token;
		pcb->msg = NULL;

		FUNC2(error, ng_btsocket_l2cap_raw_node, msg,
			pcb->rt->hook, 0);
		if (error != 0) {
			pcb->token = 0;
			FUNC10(&pcb->pcb_mtx);
			return (error);
		}

		error = FUNC8(&pcb->msg, &pcb->pcb_mtx, PZERO|PCATCH, "l2ctl",
				ng_btsocket_l2cap_raw_ioctl_timeout * hz);
		pcb->token = 0;

		if (error != 0) {
			FUNC10(&pcb->pcb_mtx);
			return (error);
		}

		msg = pcb->msg;
		pcb->msg = NULL;

		FUNC10(&pcb->pcb_mtx);

		if (msg != NULL &&
		    msg->header.cmd == NGM_L2CAP_NODE_GET_CON_LIST) {
			/* Return data back to user space */
			p1 = (ng_l2cap_node_con_list_ep *)(msg->data);
			p2 = (ng_l2cap_node_con_ep *)(p1 + 1);

			p->num_connections = FUNC7(p->num_connections,
						p1->num_connections);
			if (p->num_connections > 0)
				error = FUNC6((caddr_t) p2, 
					(caddr_t) p->connections,
					p->num_connections * sizeof(*p2));
		} else
			error = EINVAL;

		FUNC0(msg); /* checks for != NULL */
		return (error);
		} /* NOTREACHED */

	case SIOC_L2CAP_NODE_GET_CHAN_LIST: {
		struct ng_btsocket_l2cap_raw_chan_list	*p =
			(struct ng_btsocket_l2cap_raw_chan_list *) data;
		ng_l2cap_node_chan_list_ep		*p1 = NULL;
                ng_l2cap_node_chan_ep			*p2 = NULL;
 
		if (p->num_channels == 0 ||
		    p->num_channels > NG_L2CAP_MAX_CHAN_NUM ||
		    p->channels == NULL) {
			FUNC10(&pcb->pcb_mtx);
			return (EINVAL);
		}
 
		FUNC1(msg, NGM_L2CAP_COOKIE,
			NGM_L2CAP_NODE_GET_CHAN_LIST, 0, M_NOWAIT);
		if (msg == NULL) {
			FUNC10(&pcb->pcb_mtx);
			return (ENOMEM);
		}
		FUNC11(&msg->header.token);
		pcb->token = msg->header.token;
		pcb->msg = NULL;

		FUNC2(error, ng_btsocket_l2cap_raw_node, msg,
			pcb->rt->hook, 0);
		if (error != 0) {
			pcb->token = 0;
			FUNC10(&pcb->pcb_mtx);
			return (error);
		}

		error = FUNC8(&pcb->msg, &pcb->pcb_mtx, PZERO|PCATCH, "l2ctl",
				ng_btsocket_l2cap_raw_ioctl_timeout * hz);
		pcb->token = 0;

		if (error != 0) {
			FUNC10(&pcb->pcb_mtx);
			return (error);
		}

		msg = pcb->msg;
		pcb->msg = NULL;

		FUNC10(&pcb->pcb_mtx);

		if (msg != NULL &&
		    msg->header.cmd == NGM_L2CAP_NODE_GET_CHAN_LIST) {
			/* Return data back to user space */
			p1 = (ng_l2cap_node_chan_list_ep *)(msg->data);
			p2 = (ng_l2cap_node_chan_ep *)(p1 + 1);

			p->num_channels = FUNC7(p->num_channels, 
						p1->num_channels);
			if (p->num_channels > 0)
				error = FUNC6((caddr_t) p2, 
						(caddr_t) p->channels,
						p->num_channels * sizeof(*p2));
		} else
			error = EINVAL;

		FUNC0(msg); /* checks for != NULL */
		return (error);
		} /* NOTREACHED */

	case SIOC_L2CAP_L2CA_PING: {
		struct ng_btsocket_l2cap_raw_ping	*p = 
			(struct ng_btsocket_l2cap_raw_ping *) data;
		ng_l2cap_l2ca_ping_ip			*ip = NULL;
		ng_l2cap_l2ca_ping_op			*op = NULL;

		if ((p->echo_size != 0 && p->echo_data == NULL) ||
		     p->echo_size > NG_L2CAP_MAX_ECHO_SIZE) {
			FUNC10(&pcb->pcb_mtx);
			return (EINVAL);
		}

		FUNC1(msg, NGM_L2CAP_COOKIE,
			NGM_L2CAP_L2CA_PING, sizeof(*ip) + p->echo_size,
			M_NOWAIT);
		if (msg == NULL) {
			FUNC10(&pcb->pcb_mtx);
			return (ENOMEM);
		}
		FUNC11(&msg->header.token);
		pcb->token = msg->header.token;
		pcb->msg = NULL;

		ip = (ng_l2cap_l2ca_ping_ip *)(msg->data);
		FUNC3(&pcb->dst, &ip->bdaddr, sizeof(ip->bdaddr));
		ip->echo_size = p->echo_size;

		if (ip->echo_size > 0) {
			FUNC10(&pcb->pcb_mtx);
			error = FUNC5(p->echo_data, ip + 1, p->echo_size);
			FUNC9(&pcb->pcb_mtx);

			if (error != 0) {
				FUNC0(msg);
				pcb->token = 0;
				FUNC10(&pcb->pcb_mtx);
				return (error);
			}
		}

		FUNC2(error, ng_btsocket_l2cap_raw_node, msg,
			pcb->rt->hook, 0);
		if (error != 0) {
			pcb->token = 0;
			FUNC10(&pcb->pcb_mtx);
			return (error);
		}

		error = FUNC8(&pcb->msg, &pcb->pcb_mtx, PZERO|PCATCH, "l2ctl",
				FUNC4());
		pcb->token = 0;

		if (error != 0) {
			FUNC10(&pcb->pcb_mtx);
			return (error);
		}

		msg = pcb->msg;
		pcb->msg = NULL;

		FUNC10(&pcb->pcb_mtx);

		if (msg != NULL &&
		    msg->header.cmd == NGM_L2CAP_L2CA_PING) {
			/* Return data back to the user space */
			op = (ng_l2cap_l2ca_ping_op *)(msg->data);
			p->result = op->result;
			p->echo_size = FUNC7(p->echo_size, op->echo_size);

			if (p->echo_size > 0)
				error = FUNC6(op + 1, p->echo_data, 
						p->echo_size);
		} else
			error = EINVAL;

		FUNC0(msg); /* checks for != NULL */
		return (error);
		} /* NOTREACHED */

	case SIOC_L2CAP_L2CA_GET_INFO: {
		struct ng_btsocket_l2cap_raw_get_info	*p = 
			(struct ng_btsocket_l2cap_raw_get_info *) data;
		ng_l2cap_l2ca_get_info_ip		*ip = NULL;
		ng_l2cap_l2ca_get_info_op		*op = NULL;

		if (!(pcb->flags & NG_BTSOCKET_L2CAP_RAW_PRIVILEGED)) {
			FUNC10(&pcb->pcb_mtx);
			return (EPERM);
		}

		if (p->info_size != 0 && p->info_data == NULL) {
			FUNC10(&pcb->pcb_mtx);
			return (EINVAL);
		}

		FUNC1(msg, NGM_L2CAP_COOKIE,
			NGM_L2CAP_L2CA_GET_INFO, sizeof(*ip) + p->info_size,
			M_NOWAIT);
		if (msg == NULL) {
			FUNC10(&pcb->pcb_mtx);
			return (ENOMEM);
		}
		FUNC11(&msg->header.token);
		pcb->token = msg->header.token;
		pcb->msg = NULL;

		ip = (ng_l2cap_l2ca_get_info_ip *)(msg->data);
		FUNC3(&pcb->dst, &ip->bdaddr, sizeof(ip->bdaddr));
		ip->info_type = p->info_type;

		FUNC2(error, ng_btsocket_l2cap_raw_node, msg,
			pcb->rt->hook, 0);
		if (error != 0) {
			pcb->token = 0;
			FUNC10(&pcb->pcb_mtx);
			return (error);
		}

		error = FUNC8(&pcb->msg, &pcb->pcb_mtx, PZERO|PCATCH, "l2ctl",
				FUNC4());
		pcb->token = 0;

		if (error != 0) {
			FUNC10(&pcb->pcb_mtx);
			return (error);
		}

		msg = pcb->msg;
		pcb->msg = NULL;

		FUNC10(&pcb->pcb_mtx);

		if (msg != NULL &&
		    msg->header.cmd == NGM_L2CAP_L2CA_GET_INFO) {
			/* Return data back to the user space */
			op = (ng_l2cap_l2ca_get_info_op *)(msg->data);
			p->result = op->result;
			p->info_size = FUNC7(p->info_size, op->info_size);

			if (p->info_size > 0)
				error = FUNC6(op + 1, p->info_data, 
						p->info_size);
		} else
			error = EINVAL;

		FUNC0(msg); /* checks for != NULL */
		return (error);
		} /* NOTREACHED */

	case SIOC_L2CAP_NODE_GET_AUTO_DISCON_TIMO: {
		struct ng_btsocket_l2cap_raw_auto_discon_timo	*p =
			(struct ng_btsocket_l2cap_raw_auto_discon_timo *) data;

		error = FUNC13(pcb,
				NGM_L2CAP_NODE_GET_AUTO_DISCON_TIMO,
				&p->timeout, sizeof(p->timeout));
		} break;

	case SIOC_L2CAP_NODE_SET_AUTO_DISCON_TIMO: {
		struct ng_btsocket_l2cap_raw_auto_discon_timo	*p =
			(struct ng_btsocket_l2cap_raw_auto_discon_timo *) data;

		if (pcb->flags & NG_BTSOCKET_L2CAP_RAW_PRIVILEGED)
			error = FUNC12(pcb->rt->hook,
					NGM_L2CAP_NODE_SET_AUTO_DISCON_TIMO,
					&p->timeout, sizeof(p->timeout));
		else
			error = EPERM;
		} break;

	default:
		error = EINVAL;
		break;
	}

	FUNC10(&pcb->pcb_mtx);

	return (error);
}