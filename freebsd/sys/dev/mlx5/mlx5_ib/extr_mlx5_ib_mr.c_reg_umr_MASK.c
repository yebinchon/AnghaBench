#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct umr_common {int /*<<< orphan*/  sem; int /*<<< orphan*/  qp; } ;
struct TYPE_9__ {int /*<<< orphan*/ * wr_cqe; } ;
struct mlx5_umr_wr {TYPE_4__ wr; } ;
struct mlx5_ib_umr_context {scalar_t__ status; int /*<<< orphan*/  done; int /*<<< orphan*/  cqe; } ;
struct TYPE_7__ {int /*<<< orphan*/  pd; void* size; void* iova; int /*<<< orphan*/  key; } ;
struct mlx5_ib_mr {int live; TYPE_2__ mmkey; } ;
struct TYPE_6__ {struct device* dma_device; } ;
struct mlx5_ib_dev {struct umr_common umrc; TYPE_1__ ib_dev; } ;
struct ib_umem {int dummy; } ;
struct ib_sge {int dummy; } ;
struct ib_send_wr {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_8__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EAGAIN ; 
 int EFAULT ; 
 struct mlx5_ib_mr* FUNC0 (int) ; 
 scalar_t__ IB_WC_SUCCESS ; 
 int FUNC1 (struct mlx5_ib_dev*,int /*<<< orphan*/ ,int) ; 
 struct mlx5_ib_mr* FUNC2 (struct mlx5_ib_dev*,int) ; 
 int FUNC3 (struct mlx5_ib_dev*,struct ib_umem*,int,int,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_4__*,struct ib_send_wr**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_ib_umr_context*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_ib_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ib_pd*,TYPE_4__*,struct ib_sge*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,void*,void*,int) ; 
 struct mlx5_ib_dev* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC14 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_ib_mr *FUNC17(struct ib_pd *pd, struct ib_umem *umem,
				  u64 virt_addr, u64 len, int npages,
				  int page_shift, int order, int access_flags)
{
	struct mlx5_ib_dev *dev = FUNC13(pd->device);
	struct device *ddev = dev->ib_dev.dma_device;
	struct umr_common *umrc = &dev->umrc;
	struct mlx5_ib_umr_context umr_context;
	struct mlx5_umr_wr umrwr = {};
	struct ib_send_wr *bad;
	struct mlx5_ib_mr *mr;
	struct ib_sge sg;
	int size;
	__be64 *mr_pas;
	dma_addr_t dma;
	int err = 0;
	int i;

	for (i = 0; i < 1; i++) {
		mr = FUNC2(dev, order);
		if (mr)
			break;

		err = FUNC1(dev, FUNC11(dev, order), 1);
		if (err && err != -EAGAIN) {
			FUNC10(dev, "add_keys failed, err %d\n", err);
			break;
		}
	}

	if (!mr)
		return FUNC0(-EAGAIN);

	err = FUNC3(dev, umem, npages, page_shift, &size, &mr_pas,
			     &dma);
	if (err)
		goto free_mr;

	FUNC9(&umr_context);

	umrwr.wr.wr_cqe = &umr_context.cqe;
	FUNC12(pd, &umrwr.wr, &sg, dma, npages, mr->mmkey.key,
			 page_shift, virt_addr, len, access_flags);

	FUNC5(&umrc->sem);
	err = FUNC7(umrc->qp, &umrwr.wr, &bad);
	if (err) {
		FUNC10(dev, "post send failed, err %d\n", err);
		goto unmap_dma;
	} else {
		FUNC16(&umr_context.done);
		if (umr_context.status != IB_WC_SUCCESS) {
			FUNC10(dev, "reg umr failed\n");
			err = -EFAULT;
		}
	}

	mr->mmkey.iova = virt_addr;
	mr->mmkey.size = len;
	mr->mmkey.pd = FUNC14(pd)->pdn;

	mr->live = 1;

unmap_dma:
	FUNC15(&umrc->sem);
	FUNC4(ddev, dma, size, DMA_TO_DEVICE);

	FUNC8(mr_pas);

free_mr:
	if (err) {
		FUNC6(dev, mr);
		return FUNC0(err);
	}

	return mr;
}