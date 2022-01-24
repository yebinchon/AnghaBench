#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mlx5_wqe_umr_ctrl_seg {int dummy; } ;
struct mlx5_mkey_seg {int dummy; } ;
struct TYPE_10__ {void* qend; } ;
struct mlx5_ib_qp {TYPE_4__ sq; int /*<<< orphan*/  signature_en; } ;
struct mlx5_ib_mr {TYPE_5__* sig; } ;
struct TYPE_8__ {int num_sge; TYPE_1__* sg_list; } ;
struct ib_sig_handover_wr {int access_flags; TYPE_3__* prot; TYPE_2__ wr; int /*<<< orphan*/  sig_mr; } ;
struct ib_send_wr {int dummy; } ;
struct TYPE_12__ {int pdn; } ;
struct TYPE_11__ {int sig_status_checked; } ;
struct TYPE_9__ {scalar_t__ lkey; scalar_t__ addr; int length; } ;
struct TYPE_7__ {int length; scalar_t__ lkey; scalar_t__ addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int IB_ACCESS_REMOTE_ATOMIC ; 
 TYPE_6__* FUNC0 (struct mlx5_ib_qp*) ; 
 void* FUNC1 (struct mlx5_ib_qp*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ib_sig_handover_wr*,struct mlx5_ib_qp*,void**,int*) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct ib_sig_handover_wr*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 struct ib_sig_handover_wr* FUNC5 (struct ib_send_wr*) ; 
 struct mlx5_ib_mr* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct ib_send_wr *send_wr, struct mlx5_ib_qp *qp,
			  void **seg, int *size)
{
	struct ib_sig_handover_wr *wr = FUNC5(send_wr);
	struct mlx5_ib_mr *sig_mr = FUNC6(wr->sig_mr);
	u32 pdn = FUNC0(qp)->pdn;
	u32 klm_oct_size;
	int region_len, ret;

	if (FUNC7(wr->wr.num_sge != 1) ||
	    FUNC7(wr->access_flags & IB_ACCESS_REMOTE_ATOMIC) ||
	    FUNC7(!sig_mr->sig) || FUNC7(!qp->signature_en) ||
	    FUNC7(!sig_mr->sig->sig_status_checked))
		return -EINVAL;

	/* length of the protected region, data + protection */
	region_len = wr->wr.sg_list->length;
	if (wr->prot &&
	    (wr->prot->lkey != wr->wr.sg_list->lkey  ||
	     wr->prot->addr != wr->wr.sg_list->addr  ||
	     wr->prot->length != wr->wr.sg_list->length))
		region_len += wr->prot->length;

	/**
	 * KLM octoword size - if protection was provided
	 * then we use strided block format (3 octowords),
	 * else we use single KLM (1 octoword)
	 **/
	klm_oct_size = wr->prot ? 3 : 1;

	FUNC4(*seg, klm_oct_size);
	*seg += sizeof(struct mlx5_wqe_umr_ctrl_seg);
	*size += sizeof(struct mlx5_wqe_umr_ctrl_seg) / 16;
	if (FUNC7((*seg == qp->sq.qend)))
		*seg = FUNC1(qp, 0);

	FUNC3(*seg, wr, klm_oct_size, region_len, pdn);
	*seg += sizeof(struct mlx5_mkey_seg);
	*size += sizeof(struct mlx5_mkey_seg) / 16;
	if (FUNC7((*seg == qp->sq.qend)))
		*seg = FUNC1(qp, 0);

	ret = FUNC2(wr, qp, seg, size);
	if (ret)
		return ret;

	sig_mr->sig->sig_status_checked = false;
	return 0;
}