
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_hpts_entry {int p_mtx; } ;
struct inpcb {int dummy; } ;
typedef int int32_t ;


 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int mtx_unlock (int *) ;
 struct tcp_hpts_entry* tcp_hpts_lock (struct inpcb*) ;
 int tcp_queue_to_hpts_immediate_locked (struct inpcb*,struct tcp_hpts_entry*,int,int ) ;

int
__tcp_queue_to_hpts_immediate(struct inpcb *inp, int32_t line)
{
 int32_t ret;
 struct tcp_hpts_entry *hpts;

 INP_WLOCK_ASSERT(inp);
 hpts = tcp_hpts_lock(inp);
 ret = tcp_queue_to_hpts_immediate_locked(inp, hpts, line, 0);
 mtx_unlock(&hpts->p_mtx);
 return (ret);
}
