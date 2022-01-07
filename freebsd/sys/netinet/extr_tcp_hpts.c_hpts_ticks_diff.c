
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_OF_HPTSI_SLOTS ;

__attribute__((used)) static inline int
hpts_ticks_diff(int prev_tick, int tick_now)
{




 if (tick_now > prev_tick)
  return (tick_now - prev_tick);
 else if (tick_now == prev_tick)




  return (NUM_OF_HPTSI_SLOTS - 1);
 else
  return ((NUM_OF_HPTSI_SLOTS - prev_tick) + tick_now);
}
