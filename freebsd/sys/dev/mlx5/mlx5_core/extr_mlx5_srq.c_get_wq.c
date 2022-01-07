
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_srq_attr {int db_record; void* pd; void* lwm; void* page_offset; void* log_size; void* wqe_shift; void* log_page_size; int flags; } ;


 void* MLX5_GET (void*,void*,int ) ;
 int MLX5_GET64 (void*,void*,int ) ;
 int MLX5_SRQ_FLAG_WQ_SIG ;
 int dbr_addr ;
 int log_wq_pg_sz ;
 int log_wq_stride ;
 int log_wq_sz ;
 int lwm ;
 int page_offset ;
 int pd ;
 int wq_signature ;

__attribute__((used)) static void get_wq(void *wq, struct mlx5_srq_attr *in)
{
 if (MLX5_GET(wq, wq, wq_signature))
  in->flags &= MLX5_SRQ_FLAG_WQ_SIG;
 in->log_page_size = MLX5_GET(wq, wq, log_wq_pg_sz);
 in->wqe_shift = MLX5_GET(wq, wq, log_wq_stride) - 4;
 in->log_size = MLX5_GET(wq, wq, log_wq_sz);
 in->page_offset = MLX5_GET(wq, wq, page_offset);
 in->lwm = MLX5_GET(wq, wq, lwm);
 in->pd = MLX5_GET(wq, wq, pd);
 in->db_record = MLX5_GET64(wq, wq, dbr_addr);
}
