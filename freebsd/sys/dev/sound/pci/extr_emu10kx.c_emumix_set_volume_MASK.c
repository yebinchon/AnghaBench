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
struct emu_sc_info {int* mixer_volcache; int /*<<< orphan*/ * mixer_gpr; } ;

/* Variables and functions */
 int NUM_MIXERS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct emu_sc_info*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct emu_sc_info *sc, int mixer_idx, int volume)
{

	FUNC0(volume, 0, 100);
	if (mixer_idx < NUM_MIXERS) {
		sc->mixer_volcache[mixer_idx] = volume;
		FUNC1(sc, sc->mixer_gpr[mixer_idx], volume);
	}
}