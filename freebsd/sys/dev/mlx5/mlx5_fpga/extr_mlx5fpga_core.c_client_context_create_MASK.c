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
struct mlx5_fpga_device {int /*<<< orphan*/  client_data_list; } ;
struct mlx5_fpga_client_data {int added; int /*<<< orphan*/  list; int /*<<< orphan*/ * data; struct mlx5_fpga_client* client; } ;
struct mlx5_fpga_client {int /*<<< orphan*/  (* create ) (struct mlx5_fpga_device*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mlx5_fpga_client_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_fpga_device*,char*,struct mlx5_fpga_client_data*,struct mlx5_fpga_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fpga_device*) ; 

__attribute__((used)) static int FUNC4(struct mlx5_fpga_device *fdev,
				 struct mlx5_fpga_client *client,
				 struct mlx5_fpga_client_data **pctx)
{
	struct mlx5_fpga_client_data *context;

	context = FUNC0(sizeof(*context), GFP_KERNEL);
	if (!context)
		return -ENOMEM;

	context->client = client;
	context->data = NULL;
	context->added  = false;
	FUNC1(&context->list, &fdev->client_data_list);

	FUNC2(fdev, "Adding client context %p client %p\n",
		      context, client);

	if (client->create)
		client->create(fdev);

	if (pctx)
		*pctx = context;
	return 0;
}