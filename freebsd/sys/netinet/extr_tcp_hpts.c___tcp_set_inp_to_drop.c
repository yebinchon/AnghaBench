
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct tcpcb {int t_inpcb; } ;
struct tcp_hpts_entry {scalar_t__ p_hpts_active; int p_direct_wake; int p_mtx; } ;
struct inpcb {scalar_t__ inp_in_input; int inp_hpts_drop_reas; } ;
typedef int int32_t ;


 int hpts_sane_input_insert (struct tcp_hpts_entry*,struct inpcb*,int ) ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int mtx_unlock (int *) ;
 struct tcp_hpts_entry* tcp_input_lock (int ) ;
 int tcp_wakeinput (struct tcp_hpts_entry*) ;

void
__tcp_set_inp_to_drop(struct inpcb *inp, uint16_t reason, int32_t line)
{
 struct tcp_hpts_entry *hpts;
 struct tcpcb *tp;

 tp = intotcpcb(inp);
 hpts = tcp_input_lock(tp->t_inpcb);
 if (inp->inp_in_input == 0) {

  hpts_sane_input_insert(hpts, inp, line);
  if (hpts->p_hpts_active == 0) {



   hpts->p_direct_wake = 1;
   tcp_wakeinput(hpts);
  }
 } else if (hpts->p_hpts_active == 0) {
  hpts->p_direct_wake = 1;
  tcp_wakeinput(hpts);
 }
 inp->inp_hpts_drop_reas = reason;
 mtx_unlock(&hpts->p_mtx);
}
