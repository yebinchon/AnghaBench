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
struct mlx4_wqe_lso_seg {int /*<<< orphan*/  header; } ;
struct TYPE_4__ {unsigned int max_gs; } ;
struct mlx4_ib_qp {int flags; TYPE_2__ sq; } ;
struct TYPE_3__ {unsigned int num_sge; } ;
struct ib_ud_wr {int hlen; int mss; int /*<<< orphan*/  header; TYPE_1__ wr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int FUNC0 (int,int) ; 
 int EINVAL ; 
 unsigned int MLX4_IB_CACHE_LINE_SIZE ; 
 int MLX4_IB_QP_LSO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mlx4_wqe_lso_seg *wqe, struct ib_ud_wr *wr,
			 struct mlx4_ib_qp *qp, unsigned *lso_seg_len,
			 __be32 *lso_hdr_sz, __be32 *blh)
{
	unsigned halign = FUNC0(sizeof *wqe + wr->hlen, 16);

	if (FUNC3(halign > MLX4_IB_CACHE_LINE_SIZE))
		*blh = FUNC1(1 << 6);

	if (FUNC3(!(qp->flags & MLX4_IB_QP_LSO) &&
		     wr->wr.num_sge > qp->sq.max_gs - (halign >> 4)))
		return -EINVAL;

	FUNC2(wqe->header, wr->header, wr->hlen);

	*lso_hdr_sz  = FUNC1(wr->mss << 16 | wr->hlen);
	*lso_seg_len = halign;
	return 0;
}