
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {TYPE_1__* ports; } ;
struct mlx5_ib_dev {int ib_active; int ib_dev; TYPE_2__ devr; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_6__ {int port_num; } ;
struct ib_event {TYPE_3__ element; int * device; int event; } ;
typedef enum mlx5_dev_event { ____Placeholder_mlx5_dev_event } mlx5_dev_event ;
struct TYPE_4__ {int pkey_change_work; } ;


 int IB_EVENT_CLIENT_REREGISTER ;
 int IB_EVENT_DEVICE_FATAL ;
 int IB_EVENT_GID_CHANGE ;
 int IB_EVENT_LID_CHANGE ;
 int IB_EVENT_PKEY_CHANGE ;
 int IB_EVENT_PORT_ACTIVE ;
 int IB_EVENT_PORT_ERR ;
 int IB_LINK_LAYER_ETHERNET ;
 int ib_dispatch_event (struct ib_event*) ;
 int mlx5_ib_handle_internal_error (struct mlx5_ib_dev*) ;
 int mlx5_ib_port_link_layer (int *,int ) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int,int ) ;
 int rdma_is_port_valid (int *,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void mlx5_ib_event(struct mlx5_core_dev *dev, void *context,
     enum mlx5_dev_event event, unsigned long param)
{
 struct mlx5_ib_dev *ibdev = (struct mlx5_ib_dev *)context;
 struct ib_event ibev;
 bool fatal = 0;
 u8 port = (u8)param;

 switch (event) {
 case 128:
  ibev.event = IB_EVENT_DEVICE_FATAL;
  mlx5_ib_handle_internal_error(ibdev);
  fatal = 1;
  break;

 case 129:
 case 131:
 case 130:



  if (mlx5_ib_port_link_layer(&ibdev->ib_dev, port) ==
   IB_LINK_LAYER_ETHERNET)
   return;

  ibev.event = (event == 129) ?
        IB_EVENT_PORT_ACTIVE : IB_EVENT_PORT_ERR;
  break;

 case 133:
  ibev.event = IB_EVENT_LID_CHANGE;
  break;

 case 132:
  ibev.event = IB_EVENT_PKEY_CHANGE;

  schedule_work(&ibdev->devr.ports[port - 1].pkey_change_work);
  break;

 case 134:
  ibev.event = IB_EVENT_GID_CHANGE;
  break;

 case 135:
  ibev.event = IB_EVENT_CLIENT_REREGISTER;
  break;

 default:

  return;
 }

 ibev.device = &ibdev->ib_dev;
 ibev.element.port_num = port;

 if (!rdma_is_port_valid(&ibdev->ib_dev, port)) {
  mlx5_ib_warn(ibdev, "warning: event(%d) on port %d\n", event, port);
  return;
 }

 if (ibdev->ib_active)
  ib_dispatch_event(&ibev);

 if (fatal)
  ibdev->ib_active = 0;
}
