
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_srq_attr {int flags; int log_page_size; int wqe_shift; int log_size; int page_offset; int lwm; int pd; int db_record; } ;


 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_SET64 (void*,void*,int ,int ) ;
 int MLX5_SRQ_FLAG_WQ_SIG ;
 int dbr_addr ;
 int log_wq_pg_sz ;
 int log_wq_stride ;
 int log_wq_sz ;
 int lwm ;
 int page_offset ;
 int pd ;
 int wq_signature ;

__attribute__((used)) static void set_wq(void *wq, struct mlx5_srq_attr *in)
{
 MLX5_SET(wq, wq, wq_signature, !!(in->flags & MLX5_SRQ_FLAG_WQ_SIG));
 MLX5_SET(wq, wq, log_wq_pg_sz, in->log_page_size);
 MLX5_SET(wq, wq, log_wq_stride, in->wqe_shift + 4);
 MLX5_SET(wq, wq, log_wq_sz, in->log_size);
 MLX5_SET(wq, wq, page_offset, in->page_offset);
 MLX5_SET(wq, wq, lwm, in->lwm);
 MLX5_SET(wq, wq, pd, in->pd);
 MLX5_SET64(wq, wq, dbr_addr, in->db_record);
}
