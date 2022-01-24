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
typedef  int /*<<< orphan*/  u16 ;
struct ib_pd {int dummy; } ;
struct qlnxr_pd {struct ib_pd ibpd; TYPE_1__* uctx; int /*<<< orphan*/  pd_id; } ;
struct qlnxr_dev {int /*<<< orphan*/  pd_count; int /*<<< orphan*/ * rdma_ctx; int /*<<< orphan*/ * ha; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
struct TYPE_2__ {struct qlnxr_pd* pd; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_pd* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct qlnxr_dev* FUNC6 (struct ib_device*) ; 
 TYPE_1__* FUNC7 (struct ib_ucontext*) ; 
 int FUNC8 (struct ib_udata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qlnxr_pd*) ; 
 struct qlnxr_pd* FUNC10 (int,int /*<<< orphan*/ ) ; 

struct ib_pd *
FUNC11(struct ib_device *ibdev, struct ib_ucontext *context,
	struct ib_udata *udata)
{
	struct qlnxr_pd		*pd = NULL;
	u16			pd_id;
	int			rc;
	struct qlnxr_dev	*dev;
	qlnx_host_t		*ha;

	dev = FUNC6(ibdev);
	ha = dev->ha;

	FUNC2(ha, "ibdev = %p context = %p"
		" udata = %p enter\n", ibdev, context, udata);

	if (dev->rdma_ctx == NULL) {
		FUNC1(ha, "dev->rdma_ctx = NULL\n");
		rc = -1;
		goto err;
	}

	pd = FUNC10(sizeof(*pd), GFP_KERNEL);
	if (!pd) {
		rc = -ENOMEM;
		FUNC1(ha, "kzalloc(pd) = NULL\n");
		goto err;
	}

	rc = FUNC4(dev->rdma_ctx, &pd_id);
	if (rc)	{
		FUNC1(ha, "ecore_rdma_alloc_pd failed\n");
		goto err;
	}

	pd->pd_id = pd_id;

	if (udata && context) {

		rc = FUNC8(udata, &pd->pd_id, sizeof(pd->pd_id));
		if (rc) {
			FUNC1(ha, "ib_copy_to_udata failed\n");
			FUNC5(dev->rdma_ctx, pd_id);
			goto err;
		}

		pd->uctx = FUNC7(context);
		pd->uctx->pd = pd;
	}

	FUNC3(&dev->pd_count, 1);
	FUNC2(ha, "exit [pd, pd_id, pd_count] = [%p, 0x%x, %d]\n",
		pd, pd_id, dev->pd_count);

	return &pd->ibpd;

err:
	FUNC9(pd);
	FUNC2(ha, "exit -1\n");
	return FUNC0(rc);
}