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
typedef  scalar_t__ u32 ;
struct mlx5_fpga_query {scalar_t__ image_status; int /*<<< orphan*/  oper_image; int /*<<< orphan*/  admin_image; } ;
struct mlx5_fpga_device {scalar_t__ image_status; int /*<<< orphan*/  last_oper_image; int /*<<< orphan*/  mdev; int /*<<< orphan*/  last_admin_image; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ MLX5_FPGA_MORSE ; 
 scalar_t__ MLX5_FPGA_MORSEQ ; 
 scalar_t__ MLX5_FPGA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_fpga_device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fpga_device*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct mlx5_fpga_query*) ; 

__attribute__((used)) static int FUNC5(struct mlx5_fpga_device *fdev)
{
	struct mlx5_fpga_query query;
	int err;
	u32 fpga_id;

	err = FUNC4(fdev->mdev, &query);
	if (err) {
		FUNC1(fdev, "Failed to query status: %d\n", err);
		return err;
	}

	fdev->last_admin_image = query.admin_image;
	fdev->last_oper_image = query.oper_image;
	fdev->image_status = query.image_status;

	FUNC3(fdev, "Status %u; Admin image %u; Oper image %u\n",
		      query.image_status, query.admin_image, query.oper_image);

	/* For Morse projects FPGA has no influence to network functionality */
	fpga_id = FUNC0(fdev->mdev, fpga_id);
	if (fpga_id == MLX5_FPGA_MORSE || fpga_id == MLX5_FPGA_MORSEQ)
		return 0;

	if (query.image_status != MLX5_FPGA_STATUS_SUCCESS) {
		FUNC1(fdev, "%s image failed to load; status %u\n",
			      FUNC2(fdev->last_oper_image),
			      query.image_status);
		return -EIO;
	}

	return 0;
}