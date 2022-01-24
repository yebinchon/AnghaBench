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
typedef  scalar_t__ u8 ;
struct ecore_iwarp_ep {int /*<<< orphan*/  cb_context; int /*<<< orphan*/  (* event_cb ) (int /*<<< orphan*/ ,struct ecore_iwarp_cm_event_params*) ;int /*<<< orphan*/  list_entry; int /*<<< orphan*/  state; int /*<<< orphan*/  cm_info; int /*<<< orphan*/  qp; } ;
struct ecore_iwarp_cm_event_params {int /*<<< orphan*/  status; int /*<<< orphan*/ * cm_info; struct ecore_iwarp_ep* ep_context; int /*<<< orphan*/  event; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  iw_lock; int /*<<< orphan*/  ep_list; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECORE_CONN_RESET ; 
 int /*<<< orphan*/  ECORE_IWARP_EP_CLOSED ; 
 int /*<<< orphan*/  ECORE_IWARP_EVENT_CLOSE ; 
 int /*<<< orphan*/  ECORE_IWARP_QP_STATE_ERROR ; 
 int /*<<< orphan*/  ECORE_SUCCESS ; 
 scalar_t__ IWARP_QP_IN_ERROR_GOOD_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ecore_iwarp_cm_event_params*) ; 

__attribute__((used)) static void
FUNC5(struct ecore_hwfn *p_hwfn,
			struct ecore_iwarp_ep *ep,
			u8 fw_return_code)
{
	struct ecore_iwarp_cm_event_params params;

	FUNC3(p_hwfn, ep->qp, ECORE_IWARP_QP_STATE_ERROR, true);

	params.event = ECORE_IWARP_EVENT_CLOSE;
	params.ep_context = ep;
	params.cm_info = &ep->cm_info;
	params.status = (fw_return_code == IWARP_QP_IN_ERROR_GOOD_CLOSE) ?
		ECORE_SUCCESS : ECORE_CONN_RESET;

	ep->state = ECORE_IWARP_EP_CLOSED;
	FUNC1(&p_hwfn->p_rdma_info->iwarp.iw_lock);
	FUNC0(&ep->list_entry,
			       &p_hwfn->p_rdma_info->iwarp.ep_list);
	FUNC2(&p_hwfn->p_rdma_info->iwarp.iw_lock);

	ep->event_cb(ep->cb_context, &params);
}