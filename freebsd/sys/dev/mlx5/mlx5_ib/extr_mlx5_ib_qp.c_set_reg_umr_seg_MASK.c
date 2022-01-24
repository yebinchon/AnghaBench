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
struct mlx5_wqe_umr_ctrl_seg {int /*<<< orphan*/  mkey_mask; int /*<<< orphan*/  klm_octowords; int /*<<< orphan*/  flags; } ;
struct mlx5_ib_mr {int ndescs; scalar_t__ access_mode; } ;

/* Variables and functions */
 scalar_t__ MLX5_ACCESS_MODE_KLM ; 
 int /*<<< orphan*/  MLX5_UMR_CHECK_NOT_FREE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_wqe_umr_ctrl_seg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mlx5_wqe_umr_ctrl_seg *umr,
				struct mlx5_ib_mr *mr)
{
	int ndescs = mr->ndescs;

	FUNC2(umr, 0, sizeof(*umr));

	if (mr->access_mode == MLX5_ACCESS_MODE_KLM)
		/* KLMs take twice the size of MTTs */
		ndescs *= 2;

	umr->flags = MLX5_UMR_CHECK_NOT_FREE;
	umr->klm_octowords = FUNC1(ndescs);
	umr->mkey_mask = FUNC0();
}