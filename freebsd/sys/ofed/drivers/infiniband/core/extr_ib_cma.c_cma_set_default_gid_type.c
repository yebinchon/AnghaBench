
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma_device {int* default_gid_type; int device; } ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;


 int EINVAL ;
 unsigned int rdma_end_port (int ) ;
 unsigned int rdma_start_port (int ) ;
 unsigned long roce_gid_type_mask_support (int ,unsigned int) ;

int cma_set_default_gid_type(struct cma_device *cma_dev,
        unsigned int port,
        enum ib_gid_type default_gid_type)
{
 unsigned long supported_gids;

 if (port < rdma_start_port(cma_dev->device) ||
     port > rdma_end_port(cma_dev->device))
  return -EINVAL;

 supported_gids = roce_gid_type_mask_support(cma_dev->device, port);

 if (!(supported_gids & 1 << default_gid_type))
  return -EINVAL;

 cma_dev->default_gid_type[port - rdma_start_port(cma_dev->device)] =
  default_gid_type;

 return 0;
}
