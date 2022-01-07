
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {unsigned long gid_type; scalar_t__ (* is_supported ) (struct ib_device*,int ) ;} ;


 int CAP_TO_GID_TABLE_SIZE ;
 unsigned long IB_GID_TYPE_IB ;
 TYPE_1__* PORT_CAP_TO_GID_TYPE ;
 int rdma_protocol_roce (struct ib_device*,int ) ;
 scalar_t__ stub1 (struct ib_device*,int ) ;

unsigned long roce_gid_type_mask_support(struct ib_device *ib_dev, u8 port)
{
 int i;
 unsigned int ret_flags = 0;

 if (!rdma_protocol_roce(ib_dev, port))
  return 1UL << IB_GID_TYPE_IB;

 for (i = 0; i < CAP_TO_GID_TABLE_SIZE; i++)
  if (PORT_CAP_TO_GID_TYPE[i].is_supported(ib_dev, port))
   ret_flags |= 1UL << PORT_CAP_TO_GID_TYPE[i].gid_type;

 return ret_flags;
}
