
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx5_eqe_general_notification_event {int rq_user_index_delay_drop; } ;
struct TYPE_3__ {int port; } ;
struct TYPE_4__ {struct mlx5_eqe_general_notification_event general_notifications; TYPE_1__ port; } ;
struct mlx5_eqe {int sub_type; TYPE_2__ data; } ;
struct mlx5_core_dev {int dummy; } ;




 int be32_to_cpu (int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int,int) ;
 int mlx5_trigger_health_watchdog (struct mlx5_core_dev*) ;

__attribute__((used)) static void mlx5_port_general_notification_event(struct mlx5_core_dev *dev,
       struct mlx5_eqe *eqe)
{
 u8 port = (eqe->data.port.port >> 4) & 0xf;
 u32 rqn;
 struct mlx5_eqe_general_notification_event *general_event;

 switch (eqe->sub_type) {
 case 129:
  general_event = &eqe->data.general_notifications;
  rqn = be32_to_cpu(general_event->rq_user_index_delay_drop) &
     0xffffff;
  break;
 case 128:
  mlx5_trigger_health_watchdog(dev);
  break;
 default:
  mlx5_core_warn(dev,
          "general event with unrecognized subtype: port %d, sub_type %d\n",
          port, eqe->sub_type);
  break;
 }
}
