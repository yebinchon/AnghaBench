
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_device {int client_data_list; } ;
struct mlx5_fpga_client_data {int added; int list; int * data; struct mlx5_fpga_client* client; } ;
struct mlx5_fpga_client {int (* create ) (struct mlx5_fpga_device*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mlx5_fpga_client_data* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mlx5_fpga_dbg (struct mlx5_fpga_device*,char*,struct mlx5_fpga_client_data*,struct mlx5_fpga_client*) ;
 int stub1 (struct mlx5_fpga_device*) ;

__attribute__((used)) static int client_context_create(struct mlx5_fpga_device *fdev,
     struct mlx5_fpga_client *client,
     struct mlx5_fpga_client_data **pctx)
{
 struct mlx5_fpga_client_data *context;

 context = kmalloc(sizeof(*context), GFP_KERNEL);
 if (!context)
  return -ENOMEM;

 context->client = client;
 context->data = ((void*)0);
 context->added = 0;
 list_add(&context->list, &fdev->client_data_list);

 mlx5_fpga_dbg(fdev, "Adding client context %p client %p\n",
        context, client);

 if (client->create)
  client->create(fdev);

 if (pctx)
  *pctx = context;
 return 0;
}
