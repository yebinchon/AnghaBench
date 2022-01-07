
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mqp; struct mlx5_ib_qp* container_mibqp; } ;
struct mlx5_ib_rq {TYPE_1__ base; } ;
struct mlx5_ib_qp {int flags; } ;
struct mlx5_ib_dev {int mdev; } ;
typedef void __be64 ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (void*,void*,void*) ;
 int MLX5_GET (void*,void*,int ) ;
 int MLX5_GET64 (void*,void*,int ) ;
 int MLX5_IB_QP_CAP_SCATTER_FCS ;
 int MLX5_RQC_RQ_TYPE_MEMORY_RQ_INLINE ;
 int MLX5_RQC_STATE_RST ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_SET64 (void*,void*,int ,int ) ;
 int MLX5_ST_SZ_BYTES (void*) ;
 int MLX5_WQ_TYPE_CYCLIC ;
 int cqn ;
 int cqn_rcv ;
 void* create_qp_in ;
 void* create_rq_in ;
 void* ctx ;
 int dbr_addr ;
 int end_padding_mode ;
 int flush_in_error_en ;
 int get_rq_pas_size (void*) ;
 int kvfree (void*) ;
 int log_page_size ;
 int log_rq_size ;
 int log_rq_stride ;
 int log_wq_pg_sz ;
 int log_wq_stride ;
 int log_wq_sz ;
 int mem_rq_type ;
 int memcpy (void*,void*,int) ;
 int mlx5_core_create_rq_tracked (int ,void*,int,int *) ;
 void* mlx5_vzalloc (int) ;
 int page_offset ;
 int pd ;
 void* qpc ;
 int scatter_fcs ;
 int state ;
 int user_index ;
 int vlan_strip_disable ;
 int wq_type ;

__attribute__((used)) static int create_raw_packet_qp_rq(struct mlx5_ib_dev *dev,
       struct mlx5_ib_rq *rq, void *qpin)
{
 struct mlx5_ib_qp *mqp = rq->base.container_mibqp;
 __be64 *pas;
 __be64 *qp_pas;
 void *in;
 void *rqc;
 void *wq;
 void *qpc = MLX5_ADDR_OF(create_qp_in, qpin, qpc);
 int inlen;
 int err;
 u32 rq_pas_size = get_rq_pas_size(qpc);

 inlen = MLX5_ST_SZ_BYTES(create_rq_in) + rq_pas_size;
 in = mlx5_vzalloc(inlen);
 if (!in)
  return -ENOMEM;

 rqc = MLX5_ADDR_OF(create_rq_in, in, ctx);
 MLX5_SET(rqc, rqc, vlan_strip_disable, 1);
 MLX5_SET(rqc, rqc, mem_rq_type, MLX5_RQC_RQ_TYPE_MEMORY_RQ_INLINE);
 MLX5_SET(rqc, rqc, state, MLX5_RQC_STATE_RST);
 MLX5_SET(rqc, rqc, flush_in_error_en, 1);
 MLX5_SET(rqc, rqc, user_index, MLX5_GET(qpc, qpc, user_index));
 MLX5_SET(rqc, rqc, cqn, MLX5_GET(qpc, qpc, cqn_rcv));

 if (mqp->flags & MLX5_IB_QP_CAP_SCATTER_FCS)
  MLX5_SET(rqc, rqc, scatter_fcs, 1);

 wq = MLX5_ADDR_OF(rqc, rqc, wq);
 MLX5_SET(wq, wq, wq_type, MLX5_WQ_TYPE_CYCLIC);
 MLX5_SET(wq, wq, end_padding_mode,
   MLX5_GET(qpc, qpc, end_padding_mode));
 MLX5_SET(wq, wq, page_offset, MLX5_GET(qpc, qpc, page_offset));
 MLX5_SET(wq, wq, pd, MLX5_GET(qpc, qpc, pd));
 MLX5_SET64(wq, wq, dbr_addr, MLX5_GET64(qpc, qpc, dbr_addr));
 MLX5_SET(wq, wq, log_wq_stride, MLX5_GET(qpc, qpc, log_rq_stride) + 4);
 MLX5_SET(wq, wq, log_wq_pg_sz, MLX5_GET(qpc, qpc, log_page_size));
 MLX5_SET(wq, wq, log_wq_sz, MLX5_GET(qpc, qpc, log_rq_size));

 pas = (__be64 *)MLX5_ADDR_OF(wq, wq, pas);
 qp_pas = (__be64 *)MLX5_ADDR_OF(create_qp_in, qpin, pas);
 memcpy(pas, qp_pas, rq_pas_size);

 err = mlx5_core_create_rq_tracked(dev->mdev, in, inlen, &rq->base.mqp);

 kvfree(in);

 return err;
}
