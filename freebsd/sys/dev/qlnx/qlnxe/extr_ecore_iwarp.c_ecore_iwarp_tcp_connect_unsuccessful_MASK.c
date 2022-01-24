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
typedef  int u8 ;
struct ecore_iwarp_ep {scalar_t__ connect_mode; int /*<<< orphan*/  list_entry; int /*<<< orphan*/  cb_context; int /*<<< orphan*/  (* event_cb ) (int /*<<< orphan*/ ,struct ecore_iwarp_cm_event_params*) ;int /*<<< orphan*/  tcp_cid; int /*<<< orphan*/  state; int /*<<< orphan*/  cm_info; } ;
struct ecore_iwarp_cm_event_params {void* status; int /*<<< orphan*/ * cm_info; struct ecore_iwarp_ep* ep_context; int /*<<< orphan*/  event; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; } ;
typedef  int /*<<< orphan*/  params ;
struct TYPE_3__ {int /*<<< orphan*/  iw_lock; int /*<<< orphan*/  ep_list; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* ECORE_CONN_REFUSED ; 
 void* ECORE_CONN_RESET ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_iwarp_ep*) ; 
 int /*<<< orphan*/  ECORE_IWARP_EP_CLOSED ; 
 int /*<<< orphan*/  ECORE_IWARP_EVENT_ACTIVE_COMPLETE ; 
 int /*<<< orphan*/  ECORE_IWARP_INVALID_TCP_CID ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 void* ECORE_TIMEOUT ; 
#define  IWARP_CONN_ERROR_MPA_INVALID_PACKET 132 
#define  IWARP_CONN_ERROR_MPA_NOT_SUPPORTED_VER 131 
#define  IWARP_CONN_ERROR_TCP_CONNECTION_RST 130 
#define  IWARP_CONN_ERROR_TCP_CONNECT_INVALID_PACKET 129 
#define  IWARP_CONN_ERROR_TCP_CONNECT_TIMEOUT 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_iwarp_cm_event_params*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ TCP_CONNECT_PASSIVE ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,struct ecore_iwarp_ep*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ecore_iwarp_cm_event_params*) ; 

__attribute__((used)) static void
FUNC10(struct ecore_hwfn *p_hwfn,
				     struct ecore_iwarp_ep *ep,
				     u8 fw_return_code)
{
	struct ecore_iwarp_cm_event_params params;

	FUNC5(&params, sizeof(params));
	params.event = ECORE_IWARP_EVENT_ACTIVE_COMPLETE;
	params.ep_context = ep;
	params.cm_info = &ep->cm_info;
	ep->state = ECORE_IWARP_EP_CLOSED;

	switch (fw_return_code) {
	case IWARP_CONN_ERROR_TCP_CONNECT_INVALID_PACKET:
		FUNC2(p_hwfn, ECORE_MSG_RDMA,
			   "%s(0x%x) TCP connect got invalid packet\n",
			   FUNC3(ep),
			   ep->tcp_cid);
		params.status = ECORE_CONN_RESET;
		break;
	case IWARP_CONN_ERROR_TCP_CONNECTION_RST:
		FUNC2(p_hwfn, ECORE_MSG_RDMA,
			   "%s(0x%x) TCP Connection Reset\n",
			   FUNC3(ep),
			   ep->tcp_cid);
		params.status = ECORE_CONN_RESET;
		break;
	case IWARP_CONN_ERROR_TCP_CONNECT_TIMEOUT:
		FUNC1(p_hwfn, false, "%s(0x%x) TCP timeout\n",
			  FUNC3(ep),
			  ep->tcp_cid);
		params.status = ECORE_TIMEOUT;
		break;
	case IWARP_CONN_ERROR_MPA_NOT_SUPPORTED_VER:
		FUNC1(p_hwfn, false, "%s(0x%x) MPA not supported VER\n",
			  FUNC3(ep),
			  ep->tcp_cid);
		params.status = ECORE_CONN_REFUSED;
		break;
	case IWARP_CONN_ERROR_MPA_INVALID_PACKET:
		FUNC1(p_hwfn, false, "%s(0x%x) MPA Invalid Packet\n",
			  FUNC3(ep), ep->tcp_cid);
		params.status = ECORE_CONN_RESET;
		break;
	default:
		FUNC0(p_hwfn, "%s(0x%x) Unexpected return code tcp connect: %d\n",
		       FUNC3(ep), ep->tcp_cid,
		       fw_return_code);
		params.status = ECORE_CONN_RESET;
		break;
	}

	if (ep->connect_mode == TCP_CONNECT_PASSIVE) {
		ep->tcp_cid = ECORE_IWARP_INVALID_TCP_CID;
		FUNC8(p_hwfn, ep);
	} else {
		ep->event_cb(ep->cb_context, &params);
		FUNC6(&p_hwfn->p_rdma_info->iwarp.iw_lock);
		FUNC4(&ep->list_entry,
				       &p_hwfn->p_rdma_info->iwarp.ep_list);
		FUNC7(&p_hwfn->p_rdma_info->iwarp.iw_lock);
	}
}