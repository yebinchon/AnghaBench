
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACTOR_ON_TILE (int ) ;
 int ScriptStart (int *) ;
 int UIIsClosed () ;
 scalar_t__ emote_timer ;
 scalar_t__ fade_running ;
 int last_joy ;
 int scene_input_ready ;
 int scene_loaded ;
 scalar_t__ script_ptr ;
 int time ;
 scalar_t__ timer_script_duration ;
 int timer_script_ptr ;
 scalar_t__ timer_script_time ;

void SceneUpdateTimer_b()
{

  if (!scene_loaded || !scene_input_ready)
  {
    return;
  }


  if (script_ptr != 0 || emote_timer != 0 || fade_running)
  {
    return;
  }


  if (!UIIsClosed())
  {
     return;
  }


  if (timer_script_duration != 0)
  {
    if (timer_script_time == 0)
    {

      if (!ACTOR_ON_TILE(0))
      {
        return;
      }

      last_joy = last_joy & 0xF0;
      ScriptStart(&timer_script_ptr);


      timer_script_time = timer_script_duration;
    }
    else
    {

      if ((time & 0x0F) == 0x00)
      {
        --timer_script_time;
      }
    }
  }
}
