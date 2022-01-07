
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_hpts_entry {int p_mtx; } ;
struct inpcb {scalar_t__ inp_in_hpts; int inp_hpts_cpu_set; int inp_input_cpu_set; scalar_t__ inp_in_input; void* inp_input_cpu; void* inp_hpts_cpu; } ;
typedef int int32_t ;


 int INP_WLOCK_ASSERT (struct inpcb*) ;
 void* hpts_cpuid (struct inpcb*) ;
 int mtx_unlock (int *) ;
 struct tcp_hpts_entry* tcp_hpts_lock (struct inpcb*) ;
 struct tcp_hpts_entry* tcp_input_lock (struct inpcb*) ;

void
__tcp_set_hpts(struct inpcb *inp, int32_t line)
{
 struct tcp_hpts_entry *hpts;

 INP_WLOCK_ASSERT(inp);
 hpts = tcp_hpts_lock(inp);
 if ((inp->inp_in_hpts == 0) &&
     (inp->inp_hpts_cpu_set == 0)) {
  inp->inp_hpts_cpu = hpts_cpuid(inp);
  inp->inp_hpts_cpu_set = 1;
 }
 mtx_unlock(&hpts->p_mtx);
 hpts = tcp_input_lock(inp);
 if ((inp->inp_input_cpu_set == 0) &&
     (inp->inp_in_input == 0)) {
  inp->inp_input_cpu = hpts_cpuid(inp);
  inp->inp_input_cpu_set = 1;
 }
 mtx_unlock(&hpts->p_mtx);
}
