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
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  roce_en; } ;
struct TYPE_3__ {int /*<<< orphan*/  roce_en; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ field_select ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*) ; 
 int FUNC4 (struct mlx5_core_dev*,void*,int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 TYPE_1__ nic_vport_context ; 

__attribute__((used)) static int FUNC6(struct mlx5_core_dev *mdev,
					      int enable_disable)
{
	void *in;
	int inlen = FUNC1(modify_nic_vport_context_in);
	int err;

	in = FUNC5(inlen);
	if (!in) {
		FUNC3(mdev, "failed to allocate inbox\n");
		return -ENOMEM;
	}

	FUNC0(modify_nic_vport_context_in, in, field_select.roce_en, 1);
	FUNC0(modify_nic_vport_context_in, in, nic_vport_context.roce_en,
		 enable_disable);

	err = FUNC4(mdev, in, inlen);

	FUNC2(in);

	return err;
}