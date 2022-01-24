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
struct mlx5_eq_table {int num_comp_vectors; int /*<<< orphan*/  lock; int /*<<< orphan*/  comp_eqs_list; } ;
struct mlx5_eq {int index; int /*<<< orphan*/  list; int /*<<< orphan*/  eqn; } ;
struct TYPE_3__ {int /*<<< orphan*/ * uars; } ;
struct TYPE_4__ {TYPE_1__ uuari; struct mlx5_eq_table eq_table; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MLX5_COMP_EQ_SIZE ; 
 scalar_t__ MLX5_EQ_VEC_COMP_BASE ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_eq*) ; 
 struct mlx5_eq* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx5_core_dev*,struct mlx5_eq*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct mlx5_core_dev *dev)
{
	struct mlx5_eq_table *table = &dev->priv.eq_table;
	struct mlx5_eq *eq;
	int ncomp_vec;
	int nent;
	int err;
	int i;

	FUNC0(&table->comp_eqs_list);
	ncomp_vec = table->num_comp_vectors;
	nent = MLX5_COMP_EQ_SIZE;
	for (i = 0; i < ncomp_vec; i++) {
		eq = FUNC3(sizeof(*eq), GFP_KERNEL);

		err = FUNC6(dev, eq,
					 i + MLX5_EQ_VEC_COMP_BASE, nent, 0,
					 &dev->priv.uuari.uars[0]);
		if (err) {
			FUNC2(eq);
			goto clean;
		}
		FUNC5(dev, "allocated completion EQN %d\n", eq->eqn);
		eq->index = i;
		FUNC7(&table->lock);
		FUNC4(&eq->list, &table->comp_eqs_list);
		FUNC8(&table->lock);
	}

	return 0;

clean:
	FUNC1(dev);
	return err;
}