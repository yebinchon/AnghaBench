
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_wqe_umr_ctrl_seg {int flags; int mkey_mask; void* bsf_octowords; void* klm_octowords; } ;
struct TYPE_2__ {int offset; } ;
struct mlx5_umr_wr {TYPE_1__ target; int npages; } ;
struct ib_send_wr {int send_flags; int num_sge; } ;


 int MLX5_IB_SEND_UMR_FAIL_IF_FREE ;
 int MLX5_IB_SEND_UMR_UNREG ;
 int MLX5_IB_SEND_UMR_UPDATE_ACCESS ;
 int MLX5_IB_SEND_UMR_UPDATE_MTT ;
 int MLX5_IB_SEND_UMR_UPDATE_PD ;
 int MLX5_IB_SEND_UMR_UPDATE_TRANSLATION ;
 int MLX5_UMR_CHECK_FREE ;
 int MLX5_UMR_CHECK_NOT_FREE ;
 int MLX5_UMR_INLINE ;
 int MLX5_UMR_TRANSLATION_OFFSET_EN ;
 void* get_klm_octo (int ) ;
 int get_umr_reg_mr_mask () ;
 int get_umr_unreg_mr_mask () ;
 int get_umr_update_access_mask () ;
 int get_umr_update_mtt_mask () ;
 int get_umr_update_pd_mask () ;
 int get_umr_update_translation_mask () ;
 int memset (struct mlx5_wqe_umr_ctrl_seg*,int ,int) ;
 struct mlx5_umr_wr* umr_wr (struct ib_send_wr*) ;

__attribute__((used)) static void set_reg_umr_segment(struct mlx5_wqe_umr_ctrl_seg *umr,
    struct ib_send_wr *wr)
{
 struct mlx5_umr_wr *umrwr = umr_wr(wr);

 memset(umr, 0, sizeof(*umr));

 if (wr->send_flags & MLX5_IB_SEND_UMR_FAIL_IF_FREE)
  umr->flags = MLX5_UMR_CHECK_FREE;
 else
  umr->flags = MLX5_UMR_CHECK_NOT_FREE;

 if (!(wr->send_flags & MLX5_IB_SEND_UMR_UNREG)) {
  umr->klm_octowords = get_klm_octo(umrwr->npages);
  if (wr->send_flags & MLX5_IB_SEND_UMR_UPDATE_MTT) {
   umr->mkey_mask = get_umr_update_mtt_mask();
   umr->bsf_octowords = get_klm_octo(umrwr->target.offset);
   umr->flags |= MLX5_UMR_TRANSLATION_OFFSET_EN;
  }
  if (wr->send_flags & MLX5_IB_SEND_UMR_UPDATE_TRANSLATION)
   umr->mkey_mask |= get_umr_update_translation_mask();
  if (wr->send_flags & MLX5_IB_SEND_UMR_UPDATE_ACCESS)
   umr->mkey_mask |= get_umr_update_access_mask();
  if (wr->send_flags & MLX5_IB_SEND_UMR_UPDATE_PD)
   umr->mkey_mask |= get_umr_update_pd_mask();
  if (!umr->mkey_mask)
   umr->mkey_mask = get_umr_reg_mr_mask();
 } else {
  umr->mkey_mask = get_umr_unreg_mr_mask();
 }

 if (!wr->num_sge)
  umr->flags |= MLX5_UMR_INLINE;
}
