
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_class_port_info {int dummy; } ;
struct class_port_info_context {int done; int class_port_info; int port_num; TYPE_1__* device; } ;
struct TYPE_2__ {int name; } ;


 int WARN_ON (int) ;
 int complete (int *) ;
 int memcpy (int ,struct ib_class_port_info*,int) ;
 int pr_debug (char*,int ,int ,int) ;

__attribute__((used)) static void cma_query_sa_classport_info_cb(int status,
        struct ib_class_port_info *rec,
        void *context)
{
 struct class_port_info_context *cb_ctx = context;

 WARN_ON(!context);

 if (status || !rec) {
  pr_debug("RDMA CM: %s port %u failed query ClassPortInfo status: %d\n",
    cb_ctx->device->name, cb_ctx->port_num, status);
  goto out;
 }

 memcpy(cb_ctx->class_port_info, rec, sizeof(struct ib_class_port_info));

out:
 complete(&cb_ctx->done);
}
