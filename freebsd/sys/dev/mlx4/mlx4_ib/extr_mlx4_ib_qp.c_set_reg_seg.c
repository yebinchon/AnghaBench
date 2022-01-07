
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_wqe_fmr_seg {scalar_t__* reserved; void* page_size; scalar_t__ offset; void* reg_len; void* start_addr; void* buf_list; void* mem_key; int flags; } ;
struct TYPE_2__ {int page_size; int length; int iova; } ;
struct mlx4_ib_mr {TYPE_1__ ibmr; int page_map; } ;
struct ib_reg_wr {int key; int access; int mr; } ;


 int convert_access (int ) ;
 void* cpu_to_be32 (int ) ;
 void* cpu_to_be64 (int ) ;
 int ilog2 (int ) ;
 struct mlx4_ib_mr* to_mmr (int ) ;

__attribute__((used)) static void set_reg_seg(struct mlx4_wqe_fmr_seg *fseg,
   struct ib_reg_wr *wr)
{
 struct mlx4_ib_mr *mr = to_mmr(wr->mr);

 fseg->flags = convert_access(wr->access);
 fseg->mem_key = cpu_to_be32(wr->key);
 fseg->buf_list = cpu_to_be64(mr->page_map);
 fseg->start_addr = cpu_to_be64(mr->ibmr.iova);
 fseg->reg_len = cpu_to_be64(mr->ibmr.length);
 fseg->offset = 0;
 fseg->page_size = cpu_to_be32(ilog2(mr->ibmr.page_size));
 fseg->reserved[0] = 0;
 fseg->reserved[1] = 0;
}
