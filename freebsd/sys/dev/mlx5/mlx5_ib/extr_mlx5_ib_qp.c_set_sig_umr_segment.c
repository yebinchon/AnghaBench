
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_wqe_umr_ctrl_seg {int flags; int mkey_mask; int bsf_octowords; int klm_octowords; } ;


 int MLX5_FLAGS_CHECK_FREE ;
 int MLX5_FLAGS_INLINE ;
 int MLX5_MKEY_BSF_OCTO_SIZE ;
 int cpu_to_be16 (int ) ;
 int get_klm_octo (int ) ;
 int memset (struct mlx5_wqe_umr_ctrl_seg*,int ,int) ;
 int sig_mkey_mask () ;

__attribute__((used)) static void set_sig_umr_segment(struct mlx5_wqe_umr_ctrl_seg *umr,
    u32 nelements)
{
 memset(umr, 0, sizeof(*umr));

 umr->flags = MLX5_FLAGS_INLINE | MLX5_FLAGS_CHECK_FREE;
 umr->klm_octowords = get_klm_octo(nelements);
 umr->bsf_octowords = cpu_to_be16(MLX5_MKEY_BSF_OCTO_SIZE);
 umr->mkey_mask = sig_mkey_mask();
}
