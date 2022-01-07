
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int qpn; } ;
struct TYPE_4__ {TYPE_1__ mqp; } ;
struct mlx5_ib_rq {int state; TYPE_2__ base; } ;
struct mlx5_ib_dev {int mdev; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_GET (void*,void*,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kvfree (void*) ;
 int mlx5_core_query_rq (int ,int ,void*) ;
 void* mlx5_vzalloc (int) ;
 int query_rq_out ;
 int rq_context ;
 int state ;

__attribute__((used)) static int query_raw_packet_qp_rq_state(struct mlx5_ib_dev *dev,
     struct mlx5_ib_rq *rq,
     u8 *rq_state)
{
 void *out;
 void *rqc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(query_rq_out);
 out = mlx5_vzalloc(inlen);
 if (!out)
  return -ENOMEM;

 err = mlx5_core_query_rq(dev->mdev, rq->base.mqp.qpn, out);
 if (err)
  goto out;

 rqc = MLX5_ADDR_OF(query_rq_out, out, rq_context);
 *rq_state = MLX5_GET(rqc, rqc, state);
 rq->state = *rq_state;

out:
 kvfree(out);
 return err;
}
