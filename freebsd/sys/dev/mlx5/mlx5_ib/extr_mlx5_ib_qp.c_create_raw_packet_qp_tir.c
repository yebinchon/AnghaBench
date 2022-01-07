
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int qpn; } ;
struct TYPE_4__ {TYPE_1__ mqp; } ;
struct mlx5_ib_rq {int tirn; TYPE_2__ base; } ;
struct mlx5_ib_dev {int mdev; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_SET (void*,void*,int ,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int MLX5_TIRC_DISP_TYPE_DIRECT ;
 int create_tir_in ;
 int disp_type ;
 int inline_rqn ;
 int kvfree (int *) ;
 int mlx5_core_create_tir (int ,int *,int,int *) ;
 int * mlx5_vzalloc (int) ;
 int tir_context ;
 int transport_domain ;

__attribute__((used)) static int create_raw_packet_qp_tir(struct mlx5_ib_dev *dev,
        struct mlx5_ib_rq *rq, u32 tdn)
{
 u32 *in;
 void *tirc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(create_tir_in);
 in = mlx5_vzalloc(inlen);
 if (!in)
  return -ENOMEM;

 tirc = MLX5_ADDR_OF(create_tir_in, in, tir_context);
 MLX5_SET(tirc, tirc, disp_type, MLX5_TIRC_DISP_TYPE_DIRECT);
 MLX5_SET(tirc, tirc, inline_rqn, rq->base.mqp.qpn);
 MLX5_SET(tirc, tirc, transport_domain, tdn);

 err = mlx5_core_create_tir(dev->mdev, in, inlen, &rq->tirn);

 kvfree(in);

 return err;
}
