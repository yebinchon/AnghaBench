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
struct mlx5_ipsec_command_context {scalar_t__ status; int status_code; int /*<<< orphan*/  dev; int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 scalar_t__ MLX5_FPGA_IPSEC_SACMD_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_ipsec_command_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void *ctx)
{
	struct mlx5_ipsec_command_context *context = ctx;
	int res;

	res = FUNC2/*_killable XXXKIB*/(&context->complete);
	if (res) {
		FUNC1(context->dev, "Failure waiting for IPSec command response\n");
		return -EINTR;
	}

	if (context->status == MLX5_FPGA_IPSEC_SACMD_COMPLETE)
		res = context->status_code;
	else
		res = -EIO;

	FUNC0(context);
	return res;
}