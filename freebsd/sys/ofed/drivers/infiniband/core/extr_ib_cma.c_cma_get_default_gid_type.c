
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma_device {int* default_gid_type; int device; } ;


 int EINVAL ;
 unsigned int rdma_end_port (int ) ;
 unsigned int rdma_start_port (int ) ;

int cma_get_default_gid_type(struct cma_device *cma_dev,
        unsigned int port)
{
 if (port < rdma_start_port(cma_dev->device) ||
     port > rdma_end_port(cma_dev->device))
  return -EINVAL;

 return cma_dev->default_gid_type[port - rdma_start_port(cma_dev->device)];
}
