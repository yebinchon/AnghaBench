
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_device {int name; } ;
struct ib_class_port_info {int dummy; } ;
struct class_port_info_context {int done; int sa_query; int port_num; struct ib_class_port_info* class_port_info; struct ib_device* device; } ;


 int CMA_QUERY_CLASSPORT_INFO_TIMEOUT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cma_query_sa_classport_info_cb ;
 int ib_sa_classport_info_rec_query (int *,struct ib_device*,int ,int ,int ,int ,struct class_port_info_context*,int *) ;
 int init_completion (int *) ;
 int kfree (struct class_port_info_context*) ;
 struct class_port_info_context* kmalloc (int,int ) ;
 int pr_err (char*,int ,int ,int) ;
 int sa_client ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int cma_query_sa_classport_info(struct ib_device *device, u8 port_num,
           struct ib_class_port_info *class_port_info)
{
 struct class_port_info_context *cb_ctx;
 int ret;

 cb_ctx = kmalloc(sizeof(*cb_ctx), GFP_KERNEL);
 if (!cb_ctx)
  return -ENOMEM;

 cb_ctx->device = device;
 cb_ctx->class_port_info = class_port_info;
 cb_ctx->port_num = port_num;
 init_completion(&cb_ctx->done);

 ret = ib_sa_classport_info_rec_query(&sa_client, device, port_num,
          CMA_QUERY_CLASSPORT_INFO_TIMEOUT,
          GFP_KERNEL, cma_query_sa_classport_info_cb,
          cb_ctx, &cb_ctx->sa_query);
 if (ret < 0) {
  pr_err("RDMA CM: %s port %u failed to send ClassPortInfo query, ret: %d\n",
         device->name, port_num, ret);
  goto out;
 }

 wait_for_completion(&cb_ctx->done);

out:
 kfree(cb_ctx);
 return ret;
}
