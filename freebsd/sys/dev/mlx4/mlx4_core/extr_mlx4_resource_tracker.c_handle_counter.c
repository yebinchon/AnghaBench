
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ counter_index; } ;
struct mlx4_qp_context {TYPE_1__ pri_path; } ;
struct mlx4_dev {int dummy; } ;


 scalar_t__ MLX4_SINK_COUNTER_INDEX (struct mlx4_dev*) ;
 int handle_existing_counter (struct mlx4_dev*,int ,int,scalar_t__) ;
 int handle_unexisting_counter (struct mlx4_dev*,struct mlx4_qp_context*,int ,int) ;

__attribute__((used)) static int handle_counter(struct mlx4_dev *dev, struct mlx4_qp_context *qpc,
     u8 slave, int port)
{
 if (qpc->pri_path.counter_index != MLX4_SINK_COUNTER_INDEX(dev))
  return handle_existing_counter(dev, slave, port,
            qpc->pri_path.counter_index);

 return handle_unexisting_counter(dev, qpc, slave, port);
}
