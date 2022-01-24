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
struct snd_midi {int /*<<< orphan*/  lock; scalar_t__ wchan; scalar_t__ rchan; scalar_t__ busy; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct snd_midi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  midistat_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

int
FUNC6(struct snd_midi *m)
{
	int err;

	err = EBUSY;
	FUNC3(&midistat_lock);
	FUNC1(&m->lock);
	if (m->busy) {
		if (!(m->rchan || m->wchan))
			goto err;

		if (m->rchan) {
			FUNC5(&m->rchan);
			m->rchan = 0;
		}
		if (m->wchan) {
			FUNC5(&m->wchan);
			m->wchan = 0;
		}
	}
	err = FUNC0(m, 0);
	if (!err)
		goto exit;

err:
	FUNC2(&m->lock);
exit:
	FUNC4(&midistat_lock);
	return err;
}