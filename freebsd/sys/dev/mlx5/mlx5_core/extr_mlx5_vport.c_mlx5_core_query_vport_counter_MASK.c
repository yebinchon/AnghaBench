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
typedef  int u8 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int MLX5_CMD_OP_QUERY_VPORT_COUNTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (struct mlx5_core_dev*,void*,int,void*,size_t) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  num_ports ; 
 int opcode ; 
 int /*<<< orphan*/  query_vport_counter_in ; 
 int /*<<< orphan*/  vport_group_manager ; 
 int vport_number ; 

int FUNC6(struct mlx5_core_dev *dev, u8 other_vport,
				  int vf, u8 port_num, void *out,
				  size_t out_sz)
{
	int	in_sz = FUNC2(query_vport_counter_in);
	int	is_group_manager;
	void   *in;
	int	err;

	is_group_manager = FUNC0(dev, vport_group_manager);
	in = FUNC5(in_sz);
	if (!in) {
		err = -ENOMEM;
		return err;
	}

	FUNC1(query_vport_counter_in, in, opcode,
		 MLX5_CMD_OP_QUERY_VPORT_COUNTER);
	if (other_vport) {
		if (is_group_manager) {
			FUNC1(query_vport_counter_in, in, other_vport, 1);
			FUNC1(query_vport_counter_in, in, vport_number, vf + 1);
		} else {
			err = -EPERM;
			goto free;
		}
	}
	if (FUNC0(dev, num_ports) == 2)
		FUNC1(query_vport_counter_in, in, port_num, port_num);

	err = FUNC4(dev, in, in_sz, out,  out_sz);
free:
	FUNC3(in);
	return err;
}