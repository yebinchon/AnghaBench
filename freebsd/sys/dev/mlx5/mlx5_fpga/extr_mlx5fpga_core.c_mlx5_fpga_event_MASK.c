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
typedef  int u32 ;
struct mlx5_fpga_device {int fdev_state; int /*<<< orphan*/  mdev; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  load_event; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;

/* Variables and functions */
#define  MLX5_EVENT_TYPE_FPGA_ERROR 131 
#define  MLX5_EVENT_TYPE_FPGA_QP_ERROR 130 
#define  MLX5_FDEV_STATE_IN_PROGRESS 129 
#define  MLX5_FDEV_STATE_SUCCESS 128 
 int MLX5_FPGA_ERROR_EVENT_SYNDROME_IMAGE_CHANGED ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fpga_error_event ; 
 int /*<<< orphan*/  fpga_qp_error_event ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_fpga_device*,char*,int,int,char const*) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_fpga_device*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_fpga_device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC10(struct mlx5_core_dev *mdev, u8 event, void *data)
{
	struct mlx5_fpga_device *fdev = mdev->fpga;
	const char *event_name;
	bool teardown = false;
	unsigned long flags;
	u32 fpga_qpn;
	u8 syndrome;

	switch (event) {
	case MLX5_EVENT_TYPE_FPGA_ERROR:
		syndrome = FUNC0(fpga_error_event, data, syndrome);
		event_name = FUNC4(syndrome);
		break;
	case MLX5_EVENT_TYPE_FPGA_QP_ERROR:
		syndrome = FUNC0(fpga_qp_error_event, data, syndrome);
		event_name = FUNC3(syndrome);
		fpga_qpn = FUNC0(fpga_qp_error_event, data, fpga_qpn);
		FUNC2(fdev, "Error %u on QP %u: %s\n",
			      syndrome, fpga_qpn, event_name);
		break;
	default:
		FUNC6(fdev, "Unexpected event %u\n",
					   event);
		return;
	}

	FUNC8(&fdev->state_lock, flags);
	switch (fdev->fdev_state) {
	case MLX5_FDEV_STATE_SUCCESS:
		FUNC5(fdev, "Error %u: %s\n", syndrome, event_name);
		teardown = true;
		break;
	case MLX5_FDEV_STATE_IN_PROGRESS:
		if (syndrome != MLX5_FPGA_ERROR_EVENT_SYNDROME_IMAGE_CHANGED)
			FUNC5(fdev, "Error while loading %u: %s\n",
				       syndrome, event_name);
		FUNC1(&fdev->load_event);
		break;
	default:
		FUNC6(fdev, "Unexpected error event %u: %s\n",
					   syndrome, event_name);
	}
	FUNC9(&fdev->state_lock, flags);
	/* We tear-down the card's interfaces and functionality because
	 * the FPGA bump-on-the-wire is misbehaving and we lose ability
	 * to communicate with the network. User may still be able to
	 * recover by re-programming or debugging the FPGA
	 */
	if (teardown)
		FUNC7(fdev->mdev);
}