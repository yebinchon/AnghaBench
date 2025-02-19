
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ib_umad_port {int dummy; } ;
struct ib_umad_device {int kobj; TYPE_1__* port; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {struct ib_umad_device* umad_dev; } ;


 int GFP_KERNEL ;
 int ib_set_client_data (struct ib_device*,int *,struct ib_umad_device*) ;
 int ib_umad_dev_ktype ;
 scalar_t__ ib_umad_init_port (struct ib_device*,int,struct ib_umad_device*,TYPE_1__*) ;
 int ib_umad_kill_port (TYPE_1__*) ;
 int kobject_init (int *,int *) ;
 int kobject_put (int *) ;
 struct ib_umad_device* kzalloc (int,int ) ;
 int rdma_cap_ib_mad (struct ib_device*,int) ;
 int rdma_end_port (struct ib_device*) ;
 int rdma_start_port (struct ib_device*) ;
 int umad_client ;

__attribute__((used)) static void ib_umad_add_one(struct ib_device *device)
{
 struct ib_umad_device *umad_dev;
 int s, e, i;
 int count = 0;

 s = rdma_start_port(device);
 e = rdma_end_port(device);

 umad_dev = kzalloc(sizeof *umad_dev +
      (e - s + 1) * sizeof (struct ib_umad_port),
      GFP_KERNEL);
 if (!umad_dev)
  return;

 kobject_init(&umad_dev->kobj, &ib_umad_dev_ktype);

 for (i = s; i <= e; ++i) {
  if (!rdma_cap_ib_mad(device, i))
   continue;

  umad_dev->port[i - s].umad_dev = umad_dev;

  if (ib_umad_init_port(device, i, umad_dev,
          &umad_dev->port[i - s]))
   goto err;

  count++;
 }

 if (!count)
  goto free;

 ib_set_client_data(device, &umad_client, umad_dev);

 return;

err:
 while (--i >= s) {
  if (!rdma_cap_ib_mad(device, i))
   continue;

  ib_umad_kill_port(&umad_dev->port[i - s]);
 }
free:
 kobject_put(&umad_dev->kobj);
}
