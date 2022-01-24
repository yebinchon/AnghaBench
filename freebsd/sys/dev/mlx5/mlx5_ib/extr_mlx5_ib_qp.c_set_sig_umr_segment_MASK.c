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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_wqe_umr_ctrl_seg {int flags; int /*<<< orphan*/  mkey_mask; int /*<<< orphan*/  bsf_octowords; int /*<<< orphan*/  klm_octowords; } ;

/* Variables and functions */
 int MLX5_FLAGS_CHECK_FREE ; 
 int MLX5_FLAGS_INLINE ; 
 int /*<<< orphan*/  MLX5_MKEY_BSF_OCTO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_wqe_umr_ctrl_seg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct mlx5_wqe_umr_ctrl_seg *umr,
				u32 nelements)
{
	FUNC2(umr, 0, sizeof(*umr));

	umr->flags = MLX5_FLAGS_INLINE | MLX5_FLAGS_CHECK_FREE;
	umr->klm_octowords = FUNC1(nelements);
	umr->bsf_octowords = FUNC0(MLX5_MKEY_BSF_OCTO_SIZE);
	umr->mkey_mask = FUNC3();
}