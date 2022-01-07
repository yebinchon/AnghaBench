
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rdma_hw_stats {int dummy; } ;
struct ib_device {int dummy; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int BUILD_BUG_ON (int) ;
 int RDMA_HW_STATS_DEFAULT_LIFESPAN ;
 int names ;
 struct rdma_hw_stats* rdma_alloc_hw_stats_struct (int ,scalar_t__,int ) ;
 int stats_offsets ;

__attribute__((used)) static struct rdma_hw_stats *mlx5_ib_alloc_hw_stats(struct ib_device *ibdev,
          u8 port_num)
{
 BUILD_BUG_ON(ARRAY_SIZE(names) != ARRAY_SIZE(stats_offsets));


 if (port_num == 0)
  return ((void*)0);

 return rdma_alloc_hw_stats_struct(names, ARRAY_SIZE(names),
       RDMA_HW_STATS_DEFAULT_LIFESPAN);
}
