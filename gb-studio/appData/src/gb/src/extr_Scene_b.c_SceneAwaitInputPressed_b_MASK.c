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
typedef  int UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int await_input ; 
 scalar_t__ fade_running ; 
 int joy ; 
 int /*<<< orphan*/  scene_input_ready ; 
 int /*<<< orphan*/  scene_loaded ; 

UBYTE FUNC1()
{
  // If scene hasn't finished loading prevent input
  if (!scene_loaded || !scene_input_ready || !FUNC0(0) || fade_running)
  {
    return FALSE;
  }

  return ((joy & await_input) != 0);
}