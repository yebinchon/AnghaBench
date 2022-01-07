
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tcp_hpts_entry {int p_hpts_active; scalar_t__ p_wheel_complete; scalar_t__ p_runningtick; scalar_t__ p_prev_slot; scalar_t__ p_cur_slot; scalar_t__ p_nxt_slot; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ NUM_OF_HPTSI_SLOTS ;
 int combined_wheel_wrap ;
 int counter_u64_add (int ,int) ;
 scalar_t__ hpts_ticks_diff (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int32_t
max_ticks_available(struct tcp_hpts_entry *hpts, uint32_t wheel_tick, uint32_t *target_tick)
{
 uint32_t dis_to_travel, end_tick, pacer_to_now, avail_on_wheel;

 if ((hpts->p_hpts_active == 1) &&
     (hpts->p_wheel_complete == 0)) {
  end_tick = hpts->p_runningtick;

  if (end_tick == 0)
   end_tick = NUM_OF_HPTSI_SLOTS - 1;
  else
   end_tick--;
  if (target_tick)
   *target_tick = end_tick;
 } else {
  end_tick = hpts->p_prev_slot;
  if (end_tick == 0)
   end_tick = NUM_OF_HPTSI_SLOTS - 1;
  else
   end_tick--;
  if (target_tick)
   *target_tick = end_tick;






  if (hpts->p_prev_slot != wheel_tick)
   dis_to_travel = hpts_ticks_diff(hpts->p_prev_slot, wheel_tick);
  else
   dis_to_travel = 1;
  return (NUM_OF_HPTSI_SLOTS - dis_to_travel);
 }






 if (hpts->p_runningtick == hpts->p_cur_slot)
  dis_to_travel = 1;
 else
  dis_to_travel = hpts_ticks_diff(hpts->p_runningtick, hpts->p_cur_slot);



 if (hpts->p_cur_slot != wheel_tick) {

  pacer_to_now = hpts_ticks_diff(hpts->p_cur_slot, wheel_tick);
 } else {

  pacer_to_now = 0;
 }





 avail_on_wheel = NUM_OF_HPTSI_SLOTS - dis_to_travel;





 if (avail_on_wheel <= pacer_to_now) {






  counter_u64_add(combined_wheel_wrap, 1);
  *target_tick = hpts->p_nxt_slot;
  return (0);
 } else {
  return (avail_on_wheel - pacer_to_now);
 }
}
