
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int MLX5_GET (void*,void*,int ) ;
 int log_page_size ;
 int log_rq_size ;
 int log_rq_stride ;
 int page_offset ;

__attribute__((used)) static int get_rq_pas_size(void *qpc)
{
 u32 log_page_size = MLX5_GET(qpc, qpc, log_page_size) + 12;
 u32 log_rq_stride = MLX5_GET(qpc, qpc, log_rq_stride);
 u32 log_rq_size = MLX5_GET(qpc, qpc, log_rq_size);
 u32 page_offset = MLX5_GET(qpc, qpc, page_offset);
 u32 po_quanta = 1 << (log_page_size - 6);
 u32 rq_sz = 1 << (log_rq_size + 4 + log_rq_stride);
 u32 page_size = 1 << log_page_size;
 u32 rq_sz_po = rq_sz + (page_offset * po_quanta);
 u32 rq_num_pas = (rq_sz_po + page_size - 1) / page_size;

 return rq_num_pas * sizeof(u64);
}
