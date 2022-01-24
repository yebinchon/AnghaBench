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
struct mlx5_fpga_device {int dummy; } ;
struct mlx5_fpga_client_data {int /*<<< orphan*/  list; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (struct mlx5_fpga_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_fpga_client_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_fpga_device*,char*,struct mlx5_fpga_client_data*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fpga_device*) ; 

__attribute__((used)) static void FUNC4(struct mlx5_fpga_device *fdev,
				   struct mlx5_fpga_client_data *context)
{
	FUNC2(fdev, "Deleting client context %p of client %p\n",
		      context, context->client);
	if (context->client->destroy)
		context->client->destroy(fdev);
	FUNC1(&context->list);
	FUNC0(context);
}