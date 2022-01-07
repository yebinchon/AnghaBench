
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct timeval {int dummy; } ;
struct tcpcb {scalar_t__ t_in_pkt; TYPE_1__* t_fb; int * t_fb_ptr; int * t_inpcb; } ;
struct tcp_hpts_entry {struct inpcb* p_inp; int p_mtx; int p_input; } ;
struct inpcb {scalar_t__ inp_input_cpu_set; int inp_flags; int inp_flags2; int inp_socket; scalar_t__ inp_in_input; int inp_vnet; int inp_hpts_drop_reas; } ;
typedef int int16_t ;
struct TYPE_2__ {int (* tfb_do_queued_segments ) (int ,struct tcpcb*,int ) ;} ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int HPTS_MTX_ASSERT (struct tcp_hpts_entry*) ;
 int HPTS_REMOVE_INPUT ;
 int INP_DROPPED ;
 int INP_FREED ;
 int INP_SUPPORTS_MBUFQ ;
 int INP_TIMEWAIT ;
 int INP_UNLOCK_ASSERT (struct inpcb*) ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int NET_EPOCH_ASSERT () ;
 struct inpcb* TAILQ_FIRST (int *) ;
 int hpts_sane_input_remove (struct tcp_hpts_entry*,struct inpcb*,int ) ;
 scalar_t__ in_pcbrele_wlocked (struct inpcb*) ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int kern_prefetch (int *,int*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (int ,struct tcpcb*,int ) ;
 struct tcpcb* tcp_drop (struct tcpcb*,int ) ;
 int tcp_drop_in_pkts (struct tcpcb*) ;
 int tcp_hpts_remove (struct inpcb*,int ) ;
 int tcp_set_hpts (struct inpcb*) ;

__attribute__((used)) static void
tcp_input_data(struct tcp_hpts_entry *hpts, struct timeval *tv)
{
 struct tcpcb *tp;
 struct inpcb *inp;
 uint16_t drop_reason;
 int16_t set_cpu;
 uint32_t did_prefetch = 0;
 int dropped;

 HPTS_MTX_ASSERT(hpts);
 NET_EPOCH_ASSERT();

 while ((inp = TAILQ_FIRST(&hpts->p_input)) != ((void*)0)) {
  HPTS_MTX_ASSERT(hpts);
  hpts_sane_input_remove(hpts, inp, 0);
  if (inp->inp_input_cpu_set == 0) {
   set_cpu = 1;
  } else {
   set_cpu = 0;
  }
  hpts->p_inp = inp;
  drop_reason = inp->inp_hpts_drop_reas;
  inp->inp_in_input = 0;
  mtx_unlock(&hpts->p_mtx);
  INP_WLOCK(inp);



  if ((inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) ||
      (inp->inp_flags2 & INP_FREED)) {
out:
   hpts->p_inp = ((void*)0);
   if (in_pcbrele_wlocked(inp) == 0) {
    INP_WUNLOCK(inp);
   }



   mtx_lock(&hpts->p_mtx);
   continue;
  }
  tp = intotcpcb(inp);
  if ((tp == ((void*)0)) || (tp->t_inpcb == ((void*)0))) {
   goto out;
  }
  if (drop_reason) {

   tcp_drop_in_pkts(tp);
   tp = tcp_drop(tp, drop_reason);
   if (tp == ((void*)0)) {
    INP_WLOCK(inp);
   }
   if (in_pcbrele_wlocked(inp) == 0)
    INP_WUNLOCK(inp);



   mtx_lock(&hpts->p_mtx);
   continue;
  }
  if (set_cpu) {
   tcp_set_hpts(inp);
  }
  if (tp->t_fb_ptr != ((void*)0)) {
   kern_prefetch(tp->t_fb_ptr, &did_prefetch);
   did_prefetch = 1;
  }
  if ((inp->inp_flags2 & INP_SUPPORTS_MBUFQ) && tp->t_in_pkt) {
   if (inp->inp_in_input)
    tcp_hpts_remove(inp, HPTS_REMOVE_INPUT);
   dropped = (*tp->t_fb->tfb_do_queued_segments)(inp->inp_socket, tp, 0);
   if (dropped) {

    INP_WLOCK(inp);
   }
  } else if (tp->t_in_pkt) {
   tcp_drop_in_pkts(tp);
  }
  if (in_pcbrele_wlocked(inp) == 0)
   INP_WUNLOCK(inp);
  INP_UNLOCK_ASSERT(inp);



  mtx_lock(&hpts->p_mtx);
  hpts->p_inp = ((void*)0);
 }
}
