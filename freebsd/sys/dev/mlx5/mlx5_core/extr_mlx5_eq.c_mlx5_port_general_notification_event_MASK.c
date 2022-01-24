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
typedef  int u32 ;
struct mlx5_eqe_general_notification_event {int /*<<< orphan*/  rq_user_index_delay_drop; } ;
struct TYPE_3__ {int port; } ;
struct TYPE_4__ {struct mlx5_eqe_general_notification_event general_notifications; TYPE_1__ port; } ;
struct mlx5_eqe {int sub_type; TYPE_2__ data; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
#define  MLX5_GEN_EVENT_SUBTYPE_DELAY_DROP_TIMEOUT 129 
#define  MLX5_GEN_EVENT_SUBTYPE_PCI_POWER_CHANGE_EVENT 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 

__attribute__((used)) static void FUNC3(struct mlx5_core_dev *dev,
						 struct mlx5_eqe *eqe)
{
	u8 port = (eqe->data.port.port >> 4) & 0xf;
	u32 rqn;
	struct mlx5_eqe_general_notification_event *general_event;

	switch (eqe->sub_type) {
	case MLX5_GEN_EVENT_SUBTYPE_DELAY_DROP_TIMEOUT:
		general_event = &eqe->data.general_notifications;
		rqn = FUNC0(general_event->rq_user_index_delay_drop) &
			  0xffffff;
		break;
	case MLX5_GEN_EVENT_SUBTYPE_PCI_POWER_CHANGE_EVENT:
		FUNC2(dev);
		break;
	default:
		FUNC1(dev,
			       "general event with unrecognized subtype: port %d, sub_type %d\n",
			       port, eqe->sub_type);
		break;
	}
}