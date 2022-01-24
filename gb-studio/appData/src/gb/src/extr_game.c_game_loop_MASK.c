#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_6__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_10__ {TYPE_2__ dir; TYPE_1__ pos; } ;
struct TYPE_9__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_8__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int LYC_REG ; 
 scalar_t__ SCENE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_5__* actors ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  joy ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_4__ map_next_dir ; 
 TYPE_3__ map_next_pos ; 
 int /*<<< orphan*/  prev_joy ; 
 int /*<<< orphan*/  rand_seed ; 
 int /*<<< orphan*/  scene_index ; 
 int /*<<< orphan*/  scene_next_index ; 
 scalar_t__ stage_next_type ; 
 scalar_t__ stage_type ; 
 scalar_t__ time ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8()
{
  FUNC7();
  LYC_REG = 0x0;

  joy = FUNC6();

  // Handle Fade
  FUNC0();

  // Handle stage switch
  if (stage_type != stage_next_type && !FUNC1())
  {
    stage_type = stage_next_type;
    scene_index = scene_next_index;

    map_next_pos.x = actors[0].pos.x;
    map_next_pos.y = actors[0].pos.y;
    map_next_dir.x = actors[0].dir.x;
    map_next_dir.y = actors[0].dir.y;

    if (stage_type == SCENE)
    {
      FUNC2();
    }
  }

  if (stage_type == SCENE)
  {
    FUNC3();
  }

  prev_joy = joy;
  time++;

  rand_seed += time;
  FUNC5(rand_seed);

  FUNC4();
}