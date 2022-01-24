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
struct mlx5_wqe_umr_ctrl_seg {int /*<<< orphan*/  flags; int /*<<< orphan*/  mkey_mask; void* bsf_octowords; void* klm_octowords; } ;
struct TYPE_2__ {int /*<<< orphan*/  offset; } ;
struct mlx5_umr_wr {TYPE_1__ target; int /*<<< orphan*/  npages; } ;
struct ib_send_wr {int send_flags; int /*<<< orphan*/  num_sge; } ;

/* Variables and functions */
 int MLX5_IB_SEND_UMR_FAIL_IF_FREE ; 
 int MLX5_IB_SEND_UMR_UNREG ; 
 int MLX5_IB_SEND_UMR_UPDATE_ACCESS ; 
 int MLX5_IB_SEND_UMR_UPDATE_MTT ; 
 int MLX5_IB_SEND_UMR_UPDATE_PD ; 
 int MLX5_IB_SEND_UMR_UPDATE_TRANSLATION ; 
 int /*<<< orphan*/  MLX5_UMR_CHECK_FREE ; 
 int /*<<< orphan*/  MLX5_UMR_CHECK_NOT_FREE ; 
 int /*<<< orphan*/  MLX5_UMR_INLINE ; 
 int /*<<< orphan*/  MLX5_UMR_TRANSLATION_OFFSET_EN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_wqe_umr_ctrl_seg*,int /*<<< orphan*/ ,int) ; 
 struct mlx5_umr_wr* FUNC8 (struct ib_send_wr*) ; 

__attribute__((used)) static void FUNC9(struct mlx5_wqe_umr_ctrl_seg *umr,
				struct ib_send_wr *wr)
{
	struct mlx5_umr_wr *umrwr = FUNC8(wr);

	FUNC7(umr, 0, sizeof(*umr));

	if (wr->send_flags & MLX5_IB_SEND_UMR_FAIL_IF_FREE)
		umr->flags = MLX5_UMR_CHECK_FREE; /* fail if free */
	else
		umr->flags = MLX5_UMR_CHECK_NOT_FREE; /* fail if not free */

	if (!(wr->send_flags & MLX5_IB_SEND_UMR_UNREG)) {
		umr->klm_octowords = FUNC0(umrwr->npages);
		if (wr->send_flags & MLX5_IB_SEND_UMR_UPDATE_MTT) {
			umr->mkey_mask = FUNC4();
			umr->bsf_octowords = FUNC0(umrwr->target.offset);
			umr->flags |= MLX5_UMR_TRANSLATION_OFFSET_EN;
		}
		if (wr->send_flags & MLX5_IB_SEND_UMR_UPDATE_TRANSLATION)
			umr->mkey_mask |= FUNC6();
		if (wr->send_flags & MLX5_IB_SEND_UMR_UPDATE_ACCESS)
			umr->mkey_mask |= FUNC3();
		if (wr->send_flags & MLX5_IB_SEND_UMR_UPDATE_PD)
			umr->mkey_mask |= FUNC5();
		if (!umr->mkey_mask)
			umr->mkey_mask = FUNC1();
	} else {
		umr->mkey_mask = FUNC2();
	}

	if (!wr->num_sge)
		umr->flags |= MLX5_UMR_INLINE;
}