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
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  script_action_complete ; 
 scalar_t__ wait_time ; 

void FUNC0()
{
  // Handle Wait - @todo handle this outside scene?
  if (wait_time != 0)
  {
    wait_time--;
    if (wait_time == 0)
    {
      script_action_complete = TRUE;
    }
  }
}