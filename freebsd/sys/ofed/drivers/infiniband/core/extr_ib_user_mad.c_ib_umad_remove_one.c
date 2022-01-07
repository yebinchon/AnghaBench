
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_umad_device {int kobj; int * port; } ;
struct ib_device {int dummy; } ;


 int ib_umad_kill_port (int *) ;
 int kobject_put (int *) ;
 scalar_t__ rdma_cap_ib_mad (struct ib_device*,int) ;
 int rdma_end_port (struct ib_device*) ;
 int rdma_start_port (struct ib_device*) ;

__attribute__((used)) static void ib_umad_remove_one(struct ib_device *device, void *client_data)
{
 struct ib_umad_device *umad_dev = client_data;
 int i;

 if (!umad_dev)
  return;

 for (i = 0; i <= rdma_end_port(device) - rdma_start_port(device); ++i) {
  if (rdma_cap_ib_mad(device, i + rdma_start_port(device)))
   ib_umad_kill_port(&umad_dev->port[i]);
 }

 kobject_put(&umad_dev->kobj);
}
