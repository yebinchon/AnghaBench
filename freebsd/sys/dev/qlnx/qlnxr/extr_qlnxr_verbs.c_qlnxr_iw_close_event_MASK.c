#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qlnxr_iw_ep {TYPE_1__* cm_id; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct ecore_iwarp_cm_event_params {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* rem_ref ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IW_CM_EVENT_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct ecore_iwarp_cm_event_params*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(void *context,
	 struct ecore_iwarp_cm_event_params *params)
{
	struct qlnxr_iw_ep *ep = (struct qlnxr_iw_ep *)context;
	struct qlnxr_dev *dev = ep->dev;
	qlnx_host_t	*ha;

	ha = dev->ha;

	FUNC0(ha, "enter\n");
 
	if (ep->cm_id) {
		FUNC1(context,
				    params,
				    IW_CM_EVENT_CLOSE,
				    "IW_CM_EVENT_EVENT_CLOSE");
		ep->cm_id->rem_ref(ep->cm_id);
		ep->cm_id = NULL;
	}

	FUNC0(ha, "exit\n");

	return;
}