#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UWORD ;
typedef  int UBYTE ;
struct TYPE_5__ {int frames_len; int /*<<< orphan*/  sprite_type; int /*<<< orphan*/  animate; scalar_t__ frame; scalar_t__ sprite; } ;
struct TYPE_4__ {size_t bank; scalar_t__ offset; } ;
typedef  TYPE_1__ BANK_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_PTRS_BANK ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  SPRITE_ACTOR ; 
 int /*<<< orphan*/  SPRITE_ACTOR_ANIMATED ; 
 int /*<<< orphan*/  SPRITE_STATIC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ,int,scalar_t__) ; 
 TYPE_2__* actors ; 
 scalar_t__* bank_data_ptrs ; 
 size_t map_next_sprite ; 
 int /*<<< orphan*/ * sprite_bank_ptrs ; 

void FUNC5()
{
  BANK_PTR sprite_bank_ptr;
  UWORD sprite_ptr;
  UBYTE sprite_frames, sprite_len;

  // Load Player Sprite
  FUNC1(DATA_PTRS_BANK, &sprite_bank_ptr, &sprite_bank_ptrs[map_next_sprite]);
  sprite_ptr = ((UWORD)bank_data_ptrs[sprite_bank_ptr.bank]) + sprite_bank_ptr.offset;
  sprite_frames = FUNC2(sprite_bank_ptr.bank, sprite_ptr);
  sprite_len = FUNC0(sprite_frames);
  FUNC4(sprite_bank_ptr.bank, 0, sprite_len, sprite_ptr + 1);
  actors[0].sprite = 0;
  actors[0].frame = 0;
  actors[0].animate = FALSE;
  actors[0].sprite_type = sprite_frames == 6 ? SPRITE_ACTOR_ANIMATED : sprite_frames == 3 ? SPRITE_ACTOR : SPRITE_STATIC;
  actors[0].frames_len = sprite_frames == 6 ? 2 : sprite_frames == 3 ? 1 : sprite_frames;
  FUNC3(0);
}