
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wqe_umr_ctrl_seg {int mkey_mask; int klm_octowords; int flags; } ;
struct mlx5_ib_mr {int ndescs; scalar_t__ access_mode; } ;


 scalar_t__ MLX5_ACCESS_MODE_KLM ;
 int MLX5_UMR_CHECK_NOT_FREE ;
 int frwr_mkey_mask () ;
 int get_klm_octo (int) ;
 int memset (struct mlx5_wqe_umr_ctrl_seg*,int ,int) ;

__attribute__((used)) static void set_reg_umr_seg(struct mlx5_wqe_umr_ctrl_seg *umr,
    struct mlx5_ib_mr *mr)
{
 int ndescs = mr->ndescs;

 memset(umr, 0, sizeof(*umr));

 if (mr->access_mode == MLX5_ACCESS_MODE_KLM)

  ndescs *= 2;

 umr->flags = MLX5_UMR_CHECK_NOT_FREE;
 umr->klm_octowords = get_klm_octo(ndescs);
 umr->mkey_mask = frwr_mkey_mask();
}
