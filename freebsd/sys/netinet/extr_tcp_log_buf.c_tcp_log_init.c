
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_log_mem {int dummy; } ;
struct tcp_log_id_node {int dummy; } ;
struct tcp_log_id_bucket {int dummy; } ;


 int MTX_DEF ;
 int M_WAITOK ;
 int RW_NEW ;
 int TCP_LOG_BUF_DEFAULT_GLOBAL_LIMIT ;
 int UMA_ALIGN_PTR ;
 int callout_init (int *,int) ;
 void* counter_u64_alloc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rw_init_flags (int *,char*,int ) ;
 int tcp_id_tree_lock ;
 void* tcp_log_bucket_zone ;
 int tcp_log_expireq_callout ;
 int tcp_log_expireq_mtx ;
 void* tcp_log_node_zone ;
 void* tcp_log_que_copyout ;
 void* tcp_log_que_fail1 ;
 void* tcp_log_que_fail2 ;
 void* tcp_log_que_fail3 ;
 void* tcp_log_que_fail4 ;
 void* tcp_log_que_fail5 ;
 void* tcp_log_que_freed ;
 void* tcp_log_que_read ;
 void* tcp_log_queued ;
 void* tcp_log_zone ;
 int tcp_log_zone_ctor ;
 int tcp_log_zone_dtor ;
 int tcp_log_zone_init ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ,...) ;
 int uma_zone_set_max (void*,int ) ;

void
tcp_log_init(void)
{

 tcp_log_zone = uma_zcreate("tcp_log", sizeof(struct tcp_log_mem),



     ((void*)0), ((void*)0), ((void*)0),

     ((void*)0), UMA_ALIGN_PTR, 0);
 (void)uma_zone_set_max(tcp_log_zone, TCP_LOG_BUF_DEFAULT_GLOBAL_LIMIT);
 tcp_log_bucket_zone = uma_zcreate("tcp_log_bucket",
     sizeof(struct tcp_log_id_bucket), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 tcp_log_node_zone = uma_zcreate("tcp_log_node",
     sizeof(struct tcp_log_id_node), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 rw_init_flags(&tcp_id_tree_lock, "TCP ID tree", RW_NEW);
 mtx_init(&tcp_log_expireq_mtx, "TCP log expireq", ((void*)0), MTX_DEF);
 callout_init(&tcp_log_expireq_callout, 1);
}
