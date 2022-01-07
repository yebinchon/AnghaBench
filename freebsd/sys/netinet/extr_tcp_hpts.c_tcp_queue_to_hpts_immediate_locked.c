
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tcp_hpts_entry {scalar_t__ p_hpts_active; scalar_t__ p_on_min_sleep; void* p_inp; size_t p_nxt_slot; size_t p_runningtick; int p_direct_wake; int * p_hptss; int p_prev_slot; scalar_t__ p_wheel_complete; } ;
struct inpcb {scalar_t__ inp_in_hpts; size_t inp_hptsslot; scalar_t__ inp_hpts_request; } ;
typedef int int32_t ;


 int HPTS_MTX_ASSERT (struct tcp_hpts_entry*) ;
 int hpts_sane_pace_insert (struct tcp_hpts_entry*,struct inpcb*,int *,int ,int ) ;
 size_t hpts_tick (int ,int) ;
 int tcp_wakehpts (struct tcp_hpts_entry*) ;

__attribute__((used)) static int
tcp_queue_to_hpts_immediate_locked(struct inpcb *inp, struct tcp_hpts_entry *hpts, int32_t line, int32_t noref)
{
 uint32_t need_wake = 0;

 HPTS_MTX_ASSERT(hpts);
 if (inp->inp_in_hpts == 0) {

  inp->inp_hpts_request = 0;
  if ((hpts->p_hpts_active == 0) ||
      (hpts->p_wheel_complete)) {




   inp->inp_hptsslot = hpts_tick(hpts->p_prev_slot, 1);
   if ((hpts->p_on_min_sleep == 0) && (hpts->p_hpts_active == 0))
    need_wake = 1;
  } else if ((void *)inp == hpts->p_inp) {






   inp->inp_hptsslot = hpts->p_nxt_slot;
  } else
   inp->inp_hptsslot = hpts->p_runningtick;
  hpts_sane_pace_insert(hpts, inp, &hpts->p_hptss[inp->inp_hptsslot], line, noref);
  if (need_wake) {




   hpts->p_direct_wake = 1;
   tcp_wakehpts(hpts);
  }
 }
 return (need_wake);
}
