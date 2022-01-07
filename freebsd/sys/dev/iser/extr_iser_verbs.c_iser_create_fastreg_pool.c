
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_device {int pd; int ib_device; } ;
struct TYPE_2__ {scalar_t__ pool_size; int pool; } ;
struct ib_conn {TYPE_1__ fastreg; struct iser_device* device; } ;
struct fast_reg_descriptor {int list; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int ISER_ERR (char*) ;
 struct fast_reg_descriptor* iser_create_fastreg_desc (int ,int ) ;
 int iser_free_fastreg_pool (struct ib_conn*) ;
 int list_add_tail (int *,int *) ;

int
iser_create_fastreg_pool(struct ib_conn *ib_conn, unsigned cmds_max)
{
 struct iser_device *device = ib_conn->device;
 struct fast_reg_descriptor *desc;
 int i;

 INIT_LIST_HEAD(&ib_conn->fastreg.pool);
 ib_conn->fastreg.pool_size = 0;
 for (i = 0; i < cmds_max; i++) {
  desc = iser_create_fastreg_desc(device->ib_device, device->pd);
  if (!desc) {
   ISER_ERR("Failed to create fastreg descriptor");
   goto err;
  }

  list_add_tail(&desc->list, &ib_conn->fastreg.pool);
  ib_conn->fastreg.pool_size++;
 }

 return (0);

err:
 iser_free_fastreg_pool(ib_conn);
 return (ENOMEM);
}
