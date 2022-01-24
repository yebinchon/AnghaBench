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
typedef  int /*<<< orphan*/  u32 ;
struct ecore_iwarp_ep {int /*<<< orphan*/  list_entry; int /*<<< orphan*/  tcp_cid; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {int /*<<< orphan*/  iw_lock; int /*<<< orphan*/  ep_free_list; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;

/* Variables and functions */
 int ECORE_IWARP_PREALLOC_CNT ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ecore_hwfn*,struct ecore_iwarp_ep**) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*,struct ecore_iwarp_ep*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC8(struct ecore_hwfn *p_hwfn, bool init)
{
	struct ecore_iwarp_ep *ep;
	int rc = ECORE_SUCCESS;
	u32 cid;
	int count;
	int i;

	if (init)
		count = ECORE_IWARP_PREALLOC_CNT;
	else
		count = 1;

	for (i = 0; i < count; i++) {
		rc = FUNC5(p_hwfn, &ep);
		if (rc != ECORE_SUCCESS)
			return rc;

		/* During initialization we allocate from the main pool,
		 * afterwards we allocate only from the tcp_cid.
		 */
		if (init) {
			rc = FUNC3(p_hwfn, &cid);
			if (rc != ECORE_SUCCESS)
				goto err;
			FUNC7(p_hwfn, cid);
		} else {
			/* We don't care about the return code, it's ok if
			 * tcp_cid remains invalid...in this case we'll
			 * defer allocation
			 */
			FUNC4(p_hwfn, &cid);
		}

		ep->tcp_cid = cid;

		FUNC1(&p_hwfn->p_rdma_info->iwarp.iw_lock);
		FUNC0(&ep->list_entry,
				    &p_hwfn->p_rdma_info->iwarp.ep_free_list);
		FUNC2(&p_hwfn->p_rdma_info->iwarp.iw_lock);
	}

	return rc;

err:
	FUNC6(p_hwfn, ep, false);

	return rc;
}