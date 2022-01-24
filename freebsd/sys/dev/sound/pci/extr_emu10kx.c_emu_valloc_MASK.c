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
struct emu_voice {int busy; } ;
struct emu_sc_info {int /*<<< orphan*/  lock; struct emu_voice* voice; } ;

/* Variables and functions */
 int NUM_G ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

struct emu_voice *
FUNC2(struct emu_sc_info *sc)
{
	struct emu_voice *v;
	int i;

	v = NULL;
	FUNC0(&sc->lock);
	for (i = 0; i < NUM_G && sc->voice[i].busy; i++);
	if (i < NUM_G) {
		v = &sc->voice[i];
		v->busy = 1;
	}
	FUNC1(&sc->lock);
	return (v);
}