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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX5_REG_MCQI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data_size ; 
 int /*<<< orphan*/  mcqi_cap ; 
 int /*<<< orphan*/  mcqi_reg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mlx5_core_dev *dev,
			       u16 component_index,
			       u32 *max_component_size,
			       u8 *log_mcda_word_size,
			       u16 *mcda_max_write_size)
{
	u32 out[FUNC3(mcqi_reg) + FUNC3(mcqi_cap)];
	int offset = FUNC3(mcqi_reg);
	u32 in[FUNC3(mcqi_reg)];
	int err;

	FUNC4(in, 0, sizeof(in));
	FUNC4(out, 0, sizeof(out));

	FUNC1(mcqi_reg, in, component_index, component_index);
	FUNC1(mcqi_reg, in, data_size, FUNC2(mcqi_cap));

	err = FUNC5(dev, in, sizeof(in), out,
				   sizeof(out), MLX5_REG_MCQI, 0, 0);
	if (err)
		goto out;

	*max_component_size = FUNC0(mcqi_cap, out + offset, max_component_size);
	*log_mcda_word_size = FUNC0(mcqi_cap, out + offset, log_mcda_word_size);
	*mcda_max_write_size = FUNC0(mcqi_cap, out + offset, mcda_max_write_size);

out:
	return err;
}