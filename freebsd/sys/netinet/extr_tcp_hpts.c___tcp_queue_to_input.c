
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_hpts_entry {int p_mtx; } ;
struct inpcb {int dummy; } ;
typedef int int32_t ;


 int __tcp_queue_to_input_locked (struct inpcb*,struct tcp_hpts_entry*,int) ;
 int mtx_unlock (int *) ;
 struct tcp_hpts_entry* tcp_input_lock (struct inpcb*) ;

int32_t
__tcp_queue_to_input(struct inpcb *inp, int line)
{
 struct tcp_hpts_entry *hpts;
 int32_t ret;

 hpts = tcp_input_lock(inp);
 ret = __tcp_queue_to_input_locked(inp, hpts, line);
 mtx_unlock(&hpts->p_mtx);
 return (ret);
}
