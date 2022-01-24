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
struct emu_voice {int /*<<< orphan*/  vbuf; int /*<<< orphan*/ * slave; scalar_t__ busy; } ;
struct emu_sc_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  mem; struct emu_voice* voice; } ;

/* Variables and functions */
 int NUM_G ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct emu_sc_info *sc, struct emu_voice *v)
{
	int i, r;

	FUNC1(&sc->lock);
	for (i = 0; i < NUM_G; i++) {
		if (v == &sc->voice[i] && sc->voice[i].busy) {
			v->busy = 0;
			/*
			 * XXX What we should do with mono channels?
			 * See -pcm.c emupchan_init for other side of
			 * this problem
			 */
			if (v->slave != NULL)
				r = FUNC0(&sc->mem, v->vbuf);
		}
	}
	FUNC2(&sc->lock);
}