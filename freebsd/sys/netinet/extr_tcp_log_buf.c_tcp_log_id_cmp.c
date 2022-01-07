
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_log_id_bucket {int tlb_id; } ;


 int KASSERT (int ,char*) ;
 int TCP_LOG_ID_LEN ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static __inline int
tcp_log_id_cmp(struct tcp_log_id_bucket *a, struct tcp_log_id_bucket *b)
{
 KASSERT(a != ((void*)0), ("tcp_log_id_cmp: argument a is unexpectedly NULL"));
 KASSERT(b != ((void*)0), ("tcp_log_id_cmp: argument b is unexpectedly NULL"));
 return strncmp(a->tlb_id, b->tlb_id, TCP_LOG_ID_LEN);
}
