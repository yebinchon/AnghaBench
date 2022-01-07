
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_wqe_data_seg {void* lkey; void* byte_count; int addr; } ;
struct TYPE_2__ {int local_dma_lkey; } ;
struct mlx5_ib_pd {TYPE_1__ ibpd; } ;
struct mlx5_ib_mr {int desc_size; int ndescs; int desc_map; } ;


 int ALIGN (int,int) ;
 void* cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;

__attribute__((used)) static void set_reg_data_seg(struct mlx5_wqe_data_seg *dseg,
        struct mlx5_ib_mr *mr,
        struct mlx5_ib_pd *pd)
{
 int bcount = mr->desc_size * mr->ndescs;

 dseg->addr = cpu_to_be64(mr->desc_map);
 dseg->byte_count = cpu_to_be32(ALIGN(bcount, 64));
 dseg->lkey = cpu_to_be32(pd->ibpd.local_dma_lkey);
}
