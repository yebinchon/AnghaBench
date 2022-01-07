
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_log_stailq {int dummy; } ;
struct tcp_log_mem {int dummy; } ;


 struct tcp_log_mem* STAILQ_FIRST (struct tcp_log_stailq*) ;
 int STAILQ_REMOVE_HEAD (struct tcp_log_stailq*,int ) ;
 int tcp_log_entry_refcnt_rem (struct tcp_log_mem*) ;
 int tcp_log_free_log_common (struct tcp_log_mem*,int*) ;
 int tlm_queue ;

__attribute__((used)) static void
tcp_log_free_entries(struct tcp_log_stailq *head, int *count)
{
 struct tcp_log_mem *log_entry;


 while ((log_entry = STAILQ_FIRST(head)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(head, tlm_queue);
  tcp_log_entry_refcnt_rem(log_entry);
  tcp_log_free_log_common(log_entry, count);
 }
}
