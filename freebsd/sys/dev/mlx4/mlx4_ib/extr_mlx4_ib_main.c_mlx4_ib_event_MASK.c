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
typedef  int u8 ;
struct mlx4_ib_dev {int num_ports; int ib_active; struct mlx4_dev* dev; int /*<<< orphan*/  ib_dev; } ;
struct mlx4_eqe {int dummy; } ;
struct TYPE_3__ {int flags2; } ;
struct mlx4_dev {int flags; TYPE_1__ caps; } ;
struct ib_event_work {int /*<<< orphan*/  work; struct mlx4_ib_dev* ib_dev; int /*<<< orphan*/  ib_eqe; } ;
struct TYPE_4__ {int port_num; } ;
struct ib_event {TYPE_2__ element; void* device; int /*<<< orphan*/  event; } ;
struct ib_device {int dummy; } ;
typedef  enum mlx4_dev_event { ____Placeholder_mlx4_dev_event } mlx4_dev_event ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IB_EVENT_DEVICE_FATAL ; 
 int /*<<< orphan*/  IB_EVENT_PORT_ACTIVE ; 
 int /*<<< orphan*/  IB_EVENT_PORT_ERR ; 
 int /*<<< orphan*/  IB_LINK_LAYER_INFINIBAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT ; 
#define  MLX4_DEV_EVENT_CATASTROPHIC_ERROR 133 
#define  MLX4_DEV_EVENT_PORT_DOWN 132 
#define  MLX4_DEV_EVENT_PORT_MGMT_CHANGE 131 
#define  MLX4_DEV_EVENT_PORT_UP 130 
#define  MLX4_DEV_EVENT_SLAVE_INIT 129 
#define  MLX4_DEV_EVENT_SLAVE_SHUTDOWN 128 
 int MLX4_FLAG_SECURE_HOST ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_event*) ; 
 struct ib_event_work* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mlx4_eqe*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_ib_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_ib_dev*,int,int,int) ; 
 scalar_t__ FUNC10 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx4_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 struct mlx4_ib_dev* FUNC17 (struct ib_device*) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static void FUNC18(struct mlx4_dev *dev, void *ibdev_ptr,
			  enum mlx4_dev_event event, unsigned long param)
{
	struct ib_event ibev;
	struct mlx4_ib_dev *ibdev = FUNC17((struct ib_device *) ibdev_ptr);
	struct mlx4_eqe *eqe = NULL;
	struct ib_event_work *ew;
	int p = 0;

	if (FUNC10(dev) &&
	    ((event == MLX4_DEV_EVENT_PORT_UP) ||
	    (event == MLX4_DEV_EVENT_PORT_DOWN))) {
		ew = FUNC5(sizeof(*ew), GFP_ATOMIC);
		if (!ew)
			return;
		FUNC0(&ew->work, handle_bonded_port_state_event);
		ew->ib_dev = ibdev;
		FUNC15(wq, &ew->work);
		return;
	}

	if (event == MLX4_DEV_EVENT_PORT_MGMT_CHANGE)
		eqe = (struct mlx4_eqe *)param;
	else
		p = (int) param;

	switch (event) {
	case MLX4_DEV_EVENT_PORT_UP:
		if (p > ibdev->num_ports)
			return;
		if (!FUNC12(dev) &&
		    FUNC16(&ibdev->ib_dev, p) ==
			IB_LINK_LAYER_INFINIBAND) {
			if (FUNC11(dev))
				FUNC8(ibdev, p);
			if (ibdev->dev->flags & MLX4_FLAG_SECURE_HOST &&
			    !(ibdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT))
				FUNC13(ibdev, p);
		}
		ibev.event = IB_EVENT_PORT_ACTIVE;
		break;

	case MLX4_DEV_EVENT_PORT_DOWN:
		if (p > ibdev->num_ports)
			return;
		ibev.event = IB_EVENT_PORT_ERR;
		break;

	case MLX4_DEV_EVENT_CATASTROPHIC_ERROR:
		ibdev->ib_active = false;
		ibev.event = IB_EVENT_DEVICE_FATAL;
		FUNC7(ibdev);
		break;

	case MLX4_DEV_EVENT_PORT_MGMT_CHANGE:
		ew = FUNC5(sizeof *ew, GFP_ATOMIC);
		if (!ew) {
			FUNC14("failed to allocate memory for events work\n");
			break;
		}

		FUNC0(&ew->work, handle_port_mgmt_change_event);
		FUNC6(&ew->ib_eqe, eqe, sizeof *eqe);
		ew->ib_dev = ibdev;
		/* need to queue only for port owner, which uses GEN_EQE */
		if (FUNC11(dev))
			FUNC15(wq, &ew->work);
		else
			FUNC3(&ew->work);
		return;

	case MLX4_DEV_EVENT_SLAVE_INIT:
		/* here, p is the slave id */
		FUNC1(ibdev, p, 1);
		if (FUNC11(dev)) {
			int i;

			for (i = 1; i <= ibdev->num_ports; i++) {
				if (FUNC16(&ibdev->ib_dev, i)
					== IB_LINK_LAYER_INFINIBAND)
					FUNC9(ibdev,
								       p, i,
								       1);
			}
		}
		return;

	case MLX4_DEV_EVENT_SLAVE_SHUTDOWN:
		if (FUNC11(dev)) {
			int i;

			for (i = 1; i <= ibdev->num_ports; i++) {
				if (FUNC16(&ibdev->ib_dev, i)
					== IB_LINK_LAYER_INFINIBAND)
					FUNC9(ibdev,
								       p, i,
								       0);
			}
		}
		/* here, p is the slave id */
		FUNC1(ibdev, p, 0);
		return;

	default:
		return;
	}

	ibev.device	      = ibdev_ptr;
	ibev.element.port_num = FUNC10(ibdev->dev) ? 1 : (u8)p;

	FUNC4(&ibev);
}