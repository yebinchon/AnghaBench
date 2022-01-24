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
struct mlx5_priv {int /*<<< orphan*/  cq_uar_lock; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 
 int FUNC7 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_dev*) ; 
 int FUNC9 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_core_dev*) ; 
 int FUNC13 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx5_core_dev*) ; 
 int FUNC15 (struct mlx5_core_dev*) ; 
 int FUNC16 (struct mlx5_core_dev*) ; 
 int FUNC17 (struct mlx5_core_dev*) ; 

__attribute__((used)) static int FUNC18(struct mlx5_core_dev *dev, struct mlx5_priv *priv)
{
	int err;

	err = FUNC17(dev);
	if (err)
		FUNC5(dev, "Unable to find vendor specific capabilities\n");

	err = FUNC16(dev);
	if (err) {
		FUNC5(dev, "query hca failed\n");
		goto out;
	}

	err = FUNC15(dev);
	if (err) {
		FUNC5(dev, "query board id failed\n");
		goto out;
	}

	err = FUNC7(dev);
	if (err) {
		FUNC5(dev, "failed to initialize eq\n");
		goto out;
	}

	FUNC0(&priv->cq_uar_lock);

	err = FUNC9(dev);
	if (err) {
		FUNC5(dev, "failed to initialize cq table\n");
		goto err_eq_cleanup;
	}

	FUNC11(dev);
	FUNC14(dev);
	FUNC10(dev);

	FUNC12(dev);
	FUNC8(dev);

#ifdef RATELIMIT
	err = mlx5_init_rl_table(dev);
	if (err) {
		mlx5_core_err(dev, "Failed to init rate limiting\n");
		goto err_tables_cleanup;
	}
#endif
	return 0;

#ifdef RATELIMIT
err_tables_cleanup:
	mlx5_cleanup_mr_table(dev);
	mlx5_cleanup_srq_table(dev);
	mlx5_cleanup_qp_table(dev);
	mlx5_cleanup_cq_table(dev);
#endif

err_eq_cleanup:
	FUNC6(dev);

out:
	return err;
}