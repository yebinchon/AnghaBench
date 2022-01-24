#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UWORD ;
typedef  size_t UBYTE ;
struct TYPE_8__ {int /*<<< orphan*/  enabled; } ;
struct TYPE_7__ {int /*<<< orphan*/  bank; } ;
struct TYPE_6__ {int bank; int offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAMERA_LOCK_FLAG ; 
 int /*<<< orphan*/  DATA_PTRS_BANK ; 
 int /*<<< orphan*/  DISPLAY_ON ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t MAX_ACTORS ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  SHOW_SPRITES ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 void* TRUE ; 
 TYPE_3__* actors ; 
 TYPE_2__ bank_ptr ; 
 int /*<<< orphan*/  camera_settings ; 
 void* check_triggers ; 
 TYPE_1__ events_ptr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ last_joy ; 
 int /*<<< orphan*/ * scene_bank_ptrs ; 
 size_t scene_index ; 
 scalar_t__ scene_load_col_ptr ; 
 void* scene_loaded ; 
 size_t scene_num_actors ; 
 scalar_t__ time ; 
 scalar_t__ timer_script_duration ; 

void FUNC8()
{
  UBYTE i;

  // Init start script
  FUNC2(DATA_PTRS_BANK, &bank_ptr, &scene_bank_ptrs[scene_index]);
  events_ptr.bank = FUNC3(bank_ptr.bank, (UWORD)scene_load_col_ptr);
  events_ptr.offset = (FUNC3(bank_ptr.bank, scene_load_col_ptr + 1) * 256) + FUNC3(bank_ptr.bank, scene_load_col_ptr + 2);
  FUNC6(&events_ptr);

  // Hide unused Sprites
  for (i = scene_num_actors; i != MAX_ACTORS; i++)
  {
    actors[i].enabled = FALSE;
    FUNC7(FUNC1(i));
  }

  // Reset vars
  camera_settings = CAMERA_LOCK_FLAG;

  FUNC5();
  check_triggers = TRUE;
  FUNC4();

  FUNC0();

  time = 0;
  last_joy = 0;
  scene_loaded = TRUE;

  // Disable timer script
  timer_script_duration = 0;

  SHOW_SPRITES;
  DISPLAY_ON;
}