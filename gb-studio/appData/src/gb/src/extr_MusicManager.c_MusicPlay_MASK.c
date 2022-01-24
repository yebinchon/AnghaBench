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
typedef  size_t UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_PTRS_BANK ; 
 int /*<<< orphan*/  POP_BANK ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t current_index ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/ * music_banks ; 
 int /*<<< orphan*/ * music_tracks ; 

void FUNC4(UBYTE index, UBYTE loop, UBYTE return_bank)
{
  UBYTE music_bank;

  if (index != current_index)
  {
    current_index = index;
    music_bank = FUNC1(DATA_PTRS_BANK, &music_banks[index]);

    FUNC0(return_bank);
    FUNC3(music_tracks[index], music_bank, 7);
    FUNC2(loop);

    POP_BANK;
  }
}