
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_13__ {int psv_idx; } ;
struct TYPE_9__ {int psv_idx; } ;
struct mlx5_core_sig_ctx {TYPE_6__ psv_wire; TYPE_2__ psv_memory; } ;
struct TYPE_10__ {void* bs_selector; int copy_byte_mask; } ;
struct TYPE_8__ {void* bs_selector; } ;
struct mlx5_bsf_basic {int bsf_size_sbs; void* w_bfs_psv; TYPE_3__ wire; void* m_bfs_psv; TYPE_1__ mem; void* raw_data_size; int check_byte_mask; } ;
struct mlx5_bsf {int w_inl; int m_inl; struct mlx5_bsf_basic basic; } ;
struct TYPE_11__ {int pi_interval; int ref_tag; int app_tag; int bg_type; } ;
struct TYPE_12__ {TYPE_4__ dif; } ;
struct ib_sig_domain {int sig_type; TYPE_5__ sig; } ;
struct ib_sig_attrs {struct ib_sig_domain wire; struct ib_sig_domain mem; int check_mask; } ;
struct ib_mr {int dummy; } ;
struct TYPE_14__ {struct mlx5_core_sig_ctx* sig; } ;


 int EINVAL ;


 int MLX5_CPY_APP_MASK ;
 int MLX5_CPY_GRD_MASK ;
 int MLX5_CPY_REF_MASK ;
 void* bs_selector (int ) ;
 void* cpu_to_be32 (int ) ;
 int memset (struct mlx5_bsf*,int ,int) ;
 int mlx5_fill_inl_bsf (struct ib_sig_domain*,int *) ;
 TYPE_7__* to_mmr (struct ib_mr*) ;

__attribute__((used)) static int mlx5_set_bsf(struct ib_mr *sig_mr,
   struct ib_sig_attrs *sig_attrs,
   struct mlx5_bsf *bsf, u32 data_size)
{
 struct mlx5_core_sig_ctx *msig = to_mmr(sig_mr)->sig;
 struct mlx5_bsf_basic *basic = &bsf->basic;
 struct ib_sig_domain *mem = &sig_attrs->mem;
 struct ib_sig_domain *wire = &sig_attrs->wire;

 memset(bsf, 0, sizeof(*bsf));


 basic->bsf_size_sbs = 1 << 7;

 basic->check_byte_mask = sig_attrs->check_mask;
 basic->raw_data_size = cpu_to_be32(data_size);


 switch (sig_attrs->mem.sig_type) {
 case 129:
  break;
 case 128:
  basic->mem.bs_selector = bs_selector(mem->sig.dif.pi_interval);
  basic->m_bfs_psv = cpu_to_be32(msig->psv_memory.psv_idx);
  mlx5_fill_inl_bsf(mem, &bsf->m_inl);
  break;
 default:
  return -EINVAL;
 }


 switch (sig_attrs->wire.sig_type) {
 case 129:
  break;
 case 128:
  if (mem->sig.dif.pi_interval == wire->sig.dif.pi_interval &&
      mem->sig_type == wire->sig_type) {

   basic->bsf_size_sbs |= 1 << 4;
   if (mem->sig.dif.bg_type == wire->sig.dif.bg_type)
    basic->wire.copy_byte_mask |= MLX5_CPY_GRD_MASK;
   if (mem->sig.dif.app_tag == wire->sig.dif.app_tag)
    basic->wire.copy_byte_mask |= MLX5_CPY_APP_MASK;
   if (mem->sig.dif.ref_tag == wire->sig.dif.ref_tag)
    basic->wire.copy_byte_mask |= MLX5_CPY_REF_MASK;
  } else
   basic->wire.bs_selector = bs_selector(wire->sig.dif.pi_interval);

  basic->w_bfs_psv = cpu_to_be32(msig->psv_wire.psv_idx);
  mlx5_fill_inl_bsf(wire, &bsf->w_inl);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
