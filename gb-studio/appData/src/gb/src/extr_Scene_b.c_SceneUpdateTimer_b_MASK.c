#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ emote_timer ; 
 scalar_t__ fade_running ; 
 int last_joy ; 
 int /*<<< orphan*/  scene_input_ready ; 
 int /*<<< orphan*/  scene_loaded ; 
 scalar_t__ script_ptr ; 
 int time ; 
 scalar_t__ timer_script_duration ; 
 int /*<<< orphan*/  timer_script_ptr ; 
 scalar_t__ timer_script_time ; 

void FUNC3()
{
  // Don't update timer when scene is loading
  if (!scene_loaded || !scene_input_ready)
  {
    return;
  }

  // Don't update timer while script is running
  if (script_ptr != 0 || emote_timer != 0 || fade_running)
  {
    return;
  }

  // Don't update timer when UI is open
  if (!FUNC2())
  {
     return;
  }

  // Check if timer is enabled
  if (timer_script_duration != 0)
  {
    if (timer_script_time == 0)
    {
      // Don't start script when actor is between tiles
      if (!FUNC0(0))
      {
        return;
      }

      last_joy = last_joy & 0xF0;
      FUNC1(&timer_script_ptr);

      // Reset the countdown timer
      timer_script_time = timer_script_duration;
    }
    else
    {
      // Timer tick every 16 frames
      if ((time & 0x0F) == 0x00)
      {
        --timer_script_time;  
      }
    }
  }
}