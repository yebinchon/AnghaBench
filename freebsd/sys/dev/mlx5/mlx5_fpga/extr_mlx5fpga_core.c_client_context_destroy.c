
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fpga_device {int dummy; } ;
struct mlx5_fpga_client_data {int list; TYPE_1__* client; } ;
struct TYPE_2__ {int (* destroy ) (struct mlx5_fpga_device*) ;} ;


 int kfree (struct mlx5_fpga_client_data*) ;
 int list_del (int *) ;
 int mlx5_fpga_dbg (struct mlx5_fpga_device*,char*,struct mlx5_fpga_client_data*,TYPE_1__*) ;
 int stub1 (struct mlx5_fpga_device*) ;

__attribute__((used)) static void client_context_destroy(struct mlx5_fpga_device *fdev,
       struct mlx5_fpga_client_data *context)
{
 mlx5_fpga_dbg(fdev, "Deleting client context %p of client %p\n",
        context, context->client);
 if (context->client->destroy)
  context->client->destroy(fdev);
 list_del(&context->list);
 kfree(context);
}
