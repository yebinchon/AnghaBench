
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * bridge_data_timer ;
 int bridge_module ;
 int bridge_poll_ticks ;
 int bridge_update_all ;
 int * timer_start_repeat (int,int,int ,int *,int ) ;
 int timer_stop (int *) ;

__attribute__((used)) static void
bridge_set_poll_ticks(int poll_ticks)
{
 if (bridge_data_timer != ((void*)0))
  timer_stop(bridge_data_timer);

 bridge_poll_ticks = poll_ticks;
 bridge_data_timer = timer_start_repeat(bridge_poll_ticks,
     bridge_poll_ticks, bridge_update_all, ((void*)0), bridge_module);
}
