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
struct mlx5_reg_pcap {int /*<<< orphan*/  port_num; int /*<<< orphan*/  caps_127_96; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_REG_PCAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_reg_pcap*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mlx5_core_dev*,struct mlx5_reg_pcap*,int,struct mlx5_reg_pcap*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct mlx5_core_dev *dev, u8 port_num, u32 caps)
{
	struct mlx5_reg_pcap in;
	struct mlx5_reg_pcap out;
	int err;

	FUNC1(&in, 0, sizeof(in));
	in.caps_127_96 = FUNC0(caps);
	in.port_num = port_num;

	err = FUNC2(dev, &in, sizeof(in), &out,
				   sizeof(out), MLX5_REG_PCAP, 0, 1);

	return err;
}