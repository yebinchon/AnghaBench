
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int virt_addr; } ;
struct mlx5_umr_wr {int mkey; int page_shift; int length; TYPE_1__ target; scalar_t__ pd; int access_flags; } ;
struct mlx5_mkey_seg {void* qpn_mkey7_0; int log2_page_size; void* len; void* start_addr; void* flags_pd; int flags; int status; } ;
struct ib_send_wr {int send_flags; } ;
struct TYPE_4__ {int pdn; } ;


 int MLX5_IB_SEND_UMR_UNREG ;
 int MLX5_IB_SEND_UMR_UPDATE_MTT ;
 int MLX5_MKEY_STATUS_FREE ;
 int convert_access (int ) ;
 void* cpu_to_be32 (int) ;
 void* cpu_to_be64 (int ) ;
 int memset (struct mlx5_mkey_seg*,int ,int) ;
 int mlx5_mkey_variant (int ) ;
 TYPE_2__* to_mpd (scalar_t__) ;
 struct mlx5_umr_wr* umr_wr (struct ib_send_wr*) ;

__attribute__((used)) static void set_reg_mkey_segment(struct mlx5_mkey_seg *seg, struct ib_send_wr *wr)
{
 struct mlx5_umr_wr *umrwr = umr_wr(wr);

 memset(seg, 0, sizeof(*seg));
 if (wr->send_flags & MLX5_IB_SEND_UMR_UNREG) {
  seg->status = MLX5_MKEY_STATUS_FREE;
  return;
 }

 seg->flags = convert_access(umrwr->access_flags);
 if (!(wr->send_flags & MLX5_IB_SEND_UMR_UPDATE_MTT)) {
  if (umrwr->pd)
   seg->flags_pd = cpu_to_be32(to_mpd(umrwr->pd)->pdn);
  seg->start_addr = cpu_to_be64(umrwr->target.virt_addr);
 }
 seg->len = cpu_to_be64(umrwr->length);
 seg->log2_page_size = umrwr->page_shift;
 seg->qpn_mkey7_0 = cpu_to_be32(0xffffff00 |
           mlx5_mkey_variant(umrwr->mkey));
}
