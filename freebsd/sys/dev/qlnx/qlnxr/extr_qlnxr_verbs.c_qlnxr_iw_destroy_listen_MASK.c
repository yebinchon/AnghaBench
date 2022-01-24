#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qlnxr_iw_listener {scalar_t__ ecore_handle; } ;
struct qlnxr_dev {int /*<<< orphan*/  rdma_ctx; int /*<<< orphan*/ * ha; } ;
struct iw_cm_id {int /*<<< orphan*/  (* rem_ref ) (struct iw_cm_id*) ;int /*<<< orphan*/  device; struct qlnxr_iw_listener* provider_data; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct qlnxr_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iw_cm_id*) ; 

void
FUNC4(struct iw_cm_id *cm_id)
{
	struct qlnxr_iw_listener *listener = cm_id->provider_data;
	struct qlnxr_dev *dev = FUNC2((cm_id->device));
	int rc = 0;
	qlnx_host_t	*ha;

	ha = dev->ha;

	FUNC0(ha, "enter\n");

	if (listener->ecore_handle)
		rc = FUNC1(dev->rdma_ctx,
				listener->ecore_handle);

	cm_id->rem_ref(cm_id);

	FUNC0(ha, "exit [%d]\n", rc);
	return;
}