
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_mkey_seg {int flags; void* xlt_oct_size; void* len; void* start_addr; void* flags_pd; void* qpn_mkey7_0; int log2_page_size; } ;
struct TYPE_2__ {int length; int iova; int page_size; } ;
struct mlx5_ib_mr {int access_mode; TYPE_1__ ibmr; int ndescs; } ;


 int ALIGN (int ,int) ;
 int MLX5_ACCESS_MODE_KLM ;
 int MLX5_ACCESS_MODE_MTT ;
 int MLX5_MKEY_REMOTE_INVAL ;
 void* cpu_to_be32 (int) ;
 void* cpu_to_be64 (int ) ;
 int get_umr_flags (int) ;
 int ilog2 (int ) ;
 int memset (struct mlx5_mkey_seg*,int ,int) ;

__attribute__((used)) static void set_reg_mkey_seg(struct mlx5_mkey_seg *seg,
        struct mlx5_ib_mr *mr,
        u32 key, int access)
{
 int ndescs = ALIGN(mr->ndescs, 8) >> 1;

 memset(seg, 0, sizeof(*seg));

 if (mr->access_mode == MLX5_ACCESS_MODE_MTT)
  seg->log2_page_size = ilog2(mr->ibmr.page_size);
 else if (mr->access_mode == MLX5_ACCESS_MODE_KLM)

  ndescs *= 2;

 seg->flags = get_umr_flags(access) | mr->access_mode;
 seg->qpn_mkey7_0 = cpu_to_be32((key & 0xff) | 0xffffff00);
 seg->flags_pd = cpu_to_be32(MLX5_MKEY_REMOTE_INVAL);
 seg->start_addr = cpu_to_be64(mr->ibmr.iova);
 seg->len = cpu_to_be64(mr->ibmr.length);
 seg->xlt_oct_size = cpu_to_be32(ndescs);
}
