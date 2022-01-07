
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 scalar_t__ ib_agent_port_close (struct ib_device*,int) ;
 scalar_t__ ib_mad_port_close (struct ib_device*,int) ;
 int rdma_cap_ib_mad (struct ib_device*,int) ;
 int rdma_end_port (struct ib_device*) ;
 int rdma_start_port (struct ib_device*) ;

__attribute__((used)) static void ib_mad_remove_device(struct ib_device *device, void *client_data)
{
 int i;

 for (i = rdma_start_port(device); i <= rdma_end_port(device); i++) {
  if (!rdma_cap_ib_mad(device, i))
   continue;

  if (ib_agent_port_close(device, i))
   dev_err(&device->dev,
    "Couldn't close port %d for agents\n", i);
  if (ib_mad_port_close(device, i))
   dev_err(&device->dev, "Couldn't close port %d\n", i);
 }
}
