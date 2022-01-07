
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_device {int (* get_port_immutable ) (struct ib_device*,int,int *) ;int * port_immutable; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int * kzalloc (int,int ) ;
 int rdma_end_port (struct ib_device*) ;
 int rdma_start_port (struct ib_device*) ;
 int stub1 (struct ib_device*,int,int *) ;
 scalar_t__ verify_immutable (struct ib_device*,int) ;

__attribute__((used)) static int read_port_immutable(struct ib_device *device)
{
 int ret;
 u8 start_port = rdma_start_port(device);
 u8 end_port = rdma_end_port(device);
 u8 port;
 device->port_immutable = kzalloc(sizeof(*device->port_immutable)
      * (end_port + 1),
      GFP_KERNEL);
 if (!device->port_immutable)
  return -ENOMEM;

 for (port = start_port; port <= end_port; ++port) {
  ret = device->get_port_immutable(device, port,
       &device->port_immutable[port]);
  if (ret)
   return ret;

  if (verify_immutable(device, port))
   return -EINVAL;
 }
 return 0;
}
