
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_srq_attr {int db_record; void* pd; void* lwm; void* page_offset; void* log_size; void* wqe_shift; void* log_page_size; int flags; } ;


 void* MLX5_GET (void*,void*,int ) ;
 int MLX5_GET64 (void*,void*,int ) ;
 int MLX5_SRQ_FLAG_WQ_SIG ;
 int dbr_addr ;
 int log_page_size ;
 int log_rq_stride ;
 int log_srq_size ;
 int lwm ;
 int page_offset ;
 int pd ;
 int wq_signature ;

__attribute__((used)) static void get_srqc(void *srqc, struct mlx5_srq_attr *in)
{
 if (MLX5_GET(srqc, srqc, wq_signature))
  in->flags &= MLX5_SRQ_FLAG_WQ_SIG;
 in->log_page_size = MLX5_GET(srqc, srqc, log_page_size);
 in->wqe_shift = MLX5_GET(srqc, srqc, log_rq_stride);
 in->log_size = MLX5_GET(srqc, srqc, log_srq_size);
 in->page_offset = MLX5_GET(srqc, srqc, page_offset);
 in->lwm = MLX5_GET(srqc, srqc, lwm);
 in->pd = MLX5_GET(srqc, srqc, pd);
 in->db_record = MLX5_GET64(srqc, srqc, dbr_addr);
}
