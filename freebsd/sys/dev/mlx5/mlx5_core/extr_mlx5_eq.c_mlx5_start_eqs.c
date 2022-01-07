
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct mlx5_eq_table {int cmd_eq; int async_eq; int pages_eq; } ;
struct TYPE_3__ {int * uars; } ;
struct TYPE_4__ {TYPE_1__ uuari; struct mlx5_eq_table eq_table; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;


 unsigned long long MLX5_ASYNC_EVENT_MASK ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_EQ_VEC_ASYNC ;
 int MLX5_EQ_VEC_CMD ;
 int MLX5_EQ_VEC_PAGES ;
 unsigned long long MLX5_EVENT_TYPE_CMD ;
 unsigned long long MLX5_EVENT_TYPE_CODING_DCBX_CHANGE_EVENT ;
 unsigned long long MLX5_EVENT_TYPE_CODING_GENERAL_NOTIFICATION_EVENT ;
 unsigned long long MLX5_EVENT_TYPE_CODING_PORT_MODULE_EVENT ;
 unsigned long long MLX5_EVENT_TYPE_FPGA_ERROR ;
 unsigned long long MLX5_EVENT_TYPE_FPGA_QP_ERROR ;
 unsigned long long MLX5_EVENT_TYPE_NIC_VPORT_CHANGE ;
 int MLX5_EVENT_TYPE_PAGE_REQUEST ;
 unsigned long long MLX5_EVENT_TYPE_TEMP_WARN_EVENT ;
 int MLX5_NUM_ASYNC_EQE ;
 int MLX5_NUM_CMD_EQE ;
 int dcbx ;
 int fpga ;
 int general_notification_event ;
 int mlx5_cmd_use_events (struct mlx5_core_dev*) ;
 int mlx5_cmd_use_polling (struct mlx5_core_dev*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 int mlx5_create_map_eq (struct mlx5_core_dev*,int *,int ,int,int,int *) ;
 int mlx5_destroy_unmap_eq (struct mlx5_core_dev*,int *) ;
 int nic_vport_change_event ;
 int port_module_event ;
 int temp_warn_event ;

int mlx5_start_eqs(struct mlx5_core_dev *dev)
{
 struct mlx5_eq_table *table = &dev->priv.eq_table;
 u64 async_event_mask = MLX5_ASYNC_EVENT_MASK;
 int err;

 if (MLX5_CAP_GEN(dev, port_module_event))
  async_event_mask |= (1ull <<
         MLX5_EVENT_TYPE_CODING_PORT_MODULE_EVENT);

 if (MLX5_CAP_GEN(dev, nic_vport_change_event))
  async_event_mask |= (1ull <<
         MLX5_EVENT_TYPE_NIC_VPORT_CHANGE);

 if (MLX5_CAP_GEN(dev, dcbx))
  async_event_mask |= (1ull <<
         MLX5_EVENT_TYPE_CODING_DCBX_CHANGE_EVENT);

 if (MLX5_CAP_GEN(dev, fpga))
  async_event_mask |= (1ull << MLX5_EVENT_TYPE_FPGA_ERROR) |
        (1ull << MLX5_EVENT_TYPE_FPGA_QP_ERROR);

 if (MLX5_CAP_GEN(dev, temp_warn_event))
  async_event_mask |= (1ull << MLX5_EVENT_TYPE_TEMP_WARN_EVENT);

 if (MLX5_CAP_GEN(dev, general_notification_event)) {
  async_event_mask |= (1ull <<
      MLX5_EVENT_TYPE_CODING_GENERAL_NOTIFICATION_EVENT);
 }

 err = mlx5_create_map_eq(dev, &table->cmd_eq, MLX5_EQ_VEC_CMD,
     MLX5_NUM_CMD_EQE, 1ull << MLX5_EVENT_TYPE_CMD,
     &dev->priv.uuari.uars[0]);
 if (err) {
  mlx5_core_warn(dev, "failed to create cmd EQ %d\n", err);
  return err;
 }

 mlx5_cmd_use_events(dev);

 err = mlx5_create_map_eq(dev, &table->async_eq, MLX5_EQ_VEC_ASYNC,
     MLX5_NUM_ASYNC_EQE, async_event_mask,
     &dev->priv.uuari.uars[0]);
 if (err) {
  mlx5_core_warn(dev, "failed to create async EQ %d\n", err);
  goto err1;
 }

 err = mlx5_create_map_eq(dev, &table->pages_eq,
     MLX5_EQ_VEC_PAGES,
                                1,
     1 << MLX5_EVENT_TYPE_PAGE_REQUEST,
     &dev->priv.uuari.uars[0]);
 if (err) {
  mlx5_core_warn(dev, "failed to create pages EQ %d\n", err);
  goto err2;
 }

 return err;

err2:
 mlx5_destroy_unmap_eq(dev, &table->async_eq);

err1:
 mlx5_cmd_use_polling(dev);
 mlx5_destroy_unmap_eq(dev, &table->cmd_eq);
 return err;
}
