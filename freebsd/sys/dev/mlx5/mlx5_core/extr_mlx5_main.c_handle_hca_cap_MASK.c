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
struct mlx5_profile {int mask; int log_max_qp; } ;
struct mlx5_core_dev {int /*<<< orphan*/ * hca_caps_cur; struct mlx5_profile* profile; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 size_t MLX5_CAP_GENERAL ; 
 int MLX5_PROF_MASK_QP_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  capability ; 
 int /*<<< orphan*/  cmd_hca_cap ; 
 int /*<<< orphan*/  cmdif_checksum ; 
 int /*<<< orphan*/  drain_sigerr ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_max_qp ; 
 int /*<<< orphan*/  log_uar_page_sz ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mlx5_core_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pkey_table_size ; 
 int FUNC10 (struct mlx5_core_dev*,void*,int) ; 
 int /*<<< orphan*/  set_hca_cap_in ; 
 int FUNC11 (struct mlx5_core_dev*,int) ; 

__attribute__((used)) static int FUNC12(struct mlx5_core_dev *dev)
{
	void *set_ctx = NULL;
	struct mlx5_profile *prof = dev->profile;
	int err = -ENOMEM;
	int set_sz = FUNC3(set_hca_cap_in);
	void *set_hca_cap;

	set_ctx = FUNC5(set_sz, GFP_KERNEL);

	err = FUNC8(dev, MLX5_CAP_GENERAL);
	if (err)
		goto query_ex;

	set_hca_cap = FUNC0(set_hca_cap_in, set_ctx,
				   capability);
	FUNC6(set_hca_cap, dev->hca_caps_cur[MLX5_CAP_GENERAL],
	       FUNC3(cmd_hca_cap));

	FUNC7(dev, "Current Pkey table size %d Setting new size %d\n",
		      FUNC9(FUNC1(dev, pkey_table_size)),
		      128);
	/* we limit the size of the pkey table to 128 entries for now */
	FUNC2(cmd_hca_cap, set_hca_cap, pkey_table_size,
		 FUNC11(dev, 128));

	if (prof->mask & MLX5_PROF_MASK_QP_SIZE)
		FUNC2(cmd_hca_cap, set_hca_cap, log_max_qp,
			 prof->log_max_qp);

	/* disable cmdif checksum */
	FUNC2(cmd_hca_cap, set_hca_cap, cmdif_checksum, 0);

	/* enable drain sigerr */
	FUNC2(cmd_hca_cap, set_hca_cap, drain_sigerr, 1);

	FUNC2(cmd_hca_cap, set_hca_cap, log_uar_page_sz, PAGE_SHIFT - 12);

	err = FUNC10(dev, set_ctx, set_sz);

query_ex:
	FUNC4(set_ctx);
	return err;
}