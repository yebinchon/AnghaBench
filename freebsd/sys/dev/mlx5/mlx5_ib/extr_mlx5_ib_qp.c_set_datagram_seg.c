
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* qkey; } ;
struct TYPE_6__ {TYPE_2__ qkey; } ;
struct TYPE_10__ {TYPE_1__ key; void* dqp_dct; } ;
struct mlx5_wqe_datagram_seg {TYPE_5__ av; } ;
struct mlx5_av {int dummy; } ;
struct ib_send_wr {int dummy; } ;
struct TYPE_9__ {int av; } ;
struct TYPE_8__ {int remote_qpn; int remote_qkey; int ah; } ;


 int MLX5_EXTENDED_UD_AV ;
 void* cpu_to_be32 (int) ;
 int memcpy (TYPE_5__*,int *,int) ;
 TYPE_4__* to_mah (int ) ;
 TYPE_3__* ud_wr (struct ib_send_wr*) ;

__attribute__((used)) static void set_datagram_seg(struct mlx5_wqe_datagram_seg *dseg,
        struct ib_send_wr *wr)
{
 memcpy(&dseg->av, &to_mah(ud_wr(wr)->ah)->av, sizeof(struct mlx5_av));
 dseg->av.dqp_dct = cpu_to_be32(ud_wr(wr)->remote_qpn | MLX5_EXTENDED_UD_AV);
 dseg->av.key.qkey.qkey = cpu_to_be32(ud_wr(wr)->remote_qkey);
}
