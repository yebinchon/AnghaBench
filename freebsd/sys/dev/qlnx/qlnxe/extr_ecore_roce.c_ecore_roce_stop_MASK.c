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
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct ecore_bmap {int /*<<< orphan*/  max_count; int /*<<< orphan*/  bitmap; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {struct ecore_bmap cid_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PROTOCOLID_ROCE ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 

enum _ecore_status_t FUNC4(struct ecore_hwfn *p_hwfn)
{
	struct ecore_bmap *cid_map = &p_hwfn->p_rdma_info->cid_map;
	int wait_count = 0;

	/* when destroying a_RoCE QP the control is returned to the
	 * user after the synchronous part. The asynchronous part may
	 * take a little longer. We delay for a short while if an
	 * asyn destroy QP is still expected. Beyond the added delay
	 * we clear the bitmap anyway.
	 */
	while (FUNC1(cid_map->bitmap, cid_map->max_count)) {
		FUNC2(100);
		if (wait_count++ > 20) {
			FUNC0(p_hwfn, false,
				  "cid bitmap wait timed out\n");
			break;
		}
	}

	FUNC3(p_hwfn, PROTOCOLID_ROCE);

	return ECORE_SUCCESS;
}