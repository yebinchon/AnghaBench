
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct tcp_hpts_entry {scalar_t__ p_hpts_active; scalar_t__ p_on_min_sleep; int p_hpts_sleep_time; int p_direct_wake; int p_cpu; int co; int p_prev_slot; int * p_hptss; int p_lasttick; int p_curtick; int p_cur_slot; int p_nxt_slot; int p_runningtick; } ;
struct inpcb {scalar_t__ inp_in_hpts; int inp_hptsslot; int inp_hpts_request; } ;
struct hpts_diag {scalar_t__ p_hpts_active; int slot_req; scalar_t__ p_on_min_sleep; int hpts_sleep_time; int wheel_tick; int maxticks; int wheel_cts; int slot_remaining; int inp_hptsslot; int have_slept; int yet_to_sleep; int need_new_to; int co_ret; int p_lasttick; int p_curtick; int p_cur_slot; int p_nxt_slot; int p_runningtick; int p_prev_slot; } ;
typedef int sbintime_t ;
typedef int int8_t ;
typedef int int32_t ;


 int C_DIRECT_EXEC ;
 int C_PREL (int ) ;
 int HPTS_MTX_ASSERT (struct tcp_hpts_entry*) ;
 int HPTS_TICKS_PER_USEC ;
 int HPTS_USEC_IN_SEC ;
 int callout_reset_sbt_on (int *,int ,int ,int ,struct tcp_hpts_entry*,int ,int) ;
 int check_if_slot_would_be_wrong (struct tcp_hpts_entry*,struct inpcb*,int,int) ;
 int hpts_sane_pace_insert (struct tcp_hpts_entry*,struct inpcb*,int *,int,int ) ;
 int hpts_tick (int,int) ;
 int hpts_ticks_diff (int ,int) ;
 int hpts_timeout_dir ;
 int hpts_timeout_swi ;
 int max_ticks_available (struct tcp_hpts_entry*,int,int*) ;
 int memset (struct hpts_diag*,int ,int) ;
 int panic (char*,struct tcp_hpts_entry*,struct inpcb*) ;
 scalar_t__ tcp_hpts_callout_skip_swi ;
 int tcp_hpts_precision ;
 int tcp_queue_to_hpts_immediate_locked (struct inpcb*,struct tcp_hpts_entry*,int,int ) ;
 int tcp_tv_to_hptstick (struct timeval*) ;
 int tcp_wakehpts (struct tcp_hpts_entry*) ;
 int tick_to_wheel (int) ;
 int tvtosbt (struct timeval) ;

__attribute__((used)) static void
tcp_hpts_insert_locked(struct tcp_hpts_entry *hpts, struct inpcb *inp, uint32_t slot, int32_t line,
         struct hpts_diag *diag, struct timeval *tv)
{
 uint32_t need_new_to = 0;
 uint32_t wheel_cts, last_tick;
 int32_t wheel_tick, maxticks;
 int8_t need_wakeup = 0;

 HPTS_MTX_ASSERT(hpts);
 if (diag) {
  memset(diag, 0, sizeof(struct hpts_diag));
  diag->p_hpts_active = hpts->p_hpts_active;
  diag->p_prev_slot = hpts->p_prev_slot;
  diag->p_runningtick = hpts->p_runningtick;
  diag->p_nxt_slot = hpts->p_nxt_slot;
  diag->p_cur_slot = hpts->p_cur_slot;
  diag->p_curtick = hpts->p_curtick;
  diag->p_lasttick = hpts->p_lasttick;
  diag->slot_req = slot;
  diag->p_on_min_sleep = hpts->p_on_min_sleep;
  diag->hpts_sleep_time = hpts->p_hpts_sleep_time;
 }
 if (inp->inp_in_hpts == 0) {
  if (slot == 0) {

   tcp_queue_to_hpts_immediate_locked(inp, hpts, line, 0);
   return;
  }

  wheel_cts = tcp_tv_to_hptstick(tv);

  wheel_tick = tick_to_wheel(wheel_cts);

  maxticks = max_ticks_available(hpts, wheel_tick, &last_tick);
  if (diag) {
   diag->wheel_tick = wheel_tick;
   diag->maxticks = maxticks;
   diag->wheel_cts = wheel_cts;
  }
  if (maxticks == 0) {

   if (slot > 1) {







    slot--;
   }
   inp->inp_hptsslot = last_tick;
   inp->inp_hpts_request = slot;
  } else if (maxticks >= slot) {

   inp->inp_hpts_request = 0;
   inp->inp_hptsslot = hpts_tick(wheel_tick, slot);
  } else {

   inp->inp_hpts_request = slot - maxticks;
   inp->inp_hptsslot = last_tick;
  }
  if (diag) {
   diag->slot_remaining = inp->inp_hpts_request;
   diag->inp_hptsslot = inp->inp_hptsslot;
  }



  hpts_sane_pace_insert(hpts, inp, &hpts->p_hptss[inp->inp_hptsslot], line, 0);
  if ((hpts->p_hpts_active == 0) &&
      (inp->inp_hpts_request == 0) &&
      (hpts->p_on_min_sleep == 0)) {






   uint32_t have_slept, yet_to_sleep;


   have_slept = hpts_ticks_diff(hpts->p_prev_slot, wheel_tick);
   if (have_slept < hpts->p_hpts_sleep_time)
    yet_to_sleep = hpts->p_hpts_sleep_time - have_slept;
   else {

    yet_to_sleep = 0;
    need_wakeup = 1;
   }
   if (diag) {
    diag->have_slept = have_slept;
    diag->yet_to_sleep = yet_to_sleep;
   }
   if (yet_to_sleep &&
       (yet_to_sleep > slot)) {



    hpts->p_hpts_sleep_time = slot;
    need_new_to = slot * HPTS_TICKS_PER_USEC;
   }
  }





  if (need_wakeup) {
   hpts->p_direct_wake = 1;
   tcp_wakehpts(hpts);
   if (diag) {
    diag->need_new_to = 0;
    diag->co_ret = 0xffff0000;
   }
  } else if (need_new_to) {
   int32_t co_ret;
   struct timeval tv;
   sbintime_t sb;

   tv.tv_sec = 0;
   tv.tv_usec = 0;
   while (need_new_to > HPTS_USEC_IN_SEC) {
    tv.tv_sec++;
    need_new_to -= HPTS_USEC_IN_SEC;
   }
   tv.tv_usec = need_new_to;
   sb = tvtosbt(tv);
   if (tcp_hpts_callout_skip_swi == 0) {
    co_ret = callout_reset_sbt_on(&hpts->co, sb, 0,
        hpts_timeout_swi, hpts, hpts->p_cpu,
        (C_DIRECT_EXEC | C_PREL(tcp_hpts_precision)));
   } else {
    co_ret = callout_reset_sbt_on(&hpts->co, sb, 0,
        hpts_timeout_dir, hpts,
        hpts->p_cpu,
        C_PREL(tcp_hpts_precision));
   }
   if (diag) {
    diag->need_new_to = need_new_to;
    diag->co_ret = co_ret;
   }
  }
 } else {



 }
}
