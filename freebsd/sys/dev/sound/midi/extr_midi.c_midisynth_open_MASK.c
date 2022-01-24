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
struct synth_midi {struct snd_midi* m; } ;
struct snd_midi {int flags; int synth_flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  qlock; int /*<<< orphan*/  cookie; scalar_t__ wchan; scalar_t__ rchan; int /*<<< orphan*/  inq; int /*<<< orphan*/  busy; int /*<<< orphan*/  outq; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_midi*,int /*<<< orphan*/ ,int) ; 
 int M_RX ; 
 int M_RXEN ; 
 int M_TX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int
FUNC7(void *n, void *arg, int flags)
{
	struct snd_midi *m = ((struct synth_midi *)n)->m;
	int retval;

	FUNC2(1, FUNC6("midisynth_open %s %s\n",
	    flags & FREAD ? "M_RX" : "", flags & FWRITE ? "M_TX" : ""));

	if (m == NULL)
		return ENXIO;

	FUNC4(&m->lock);
	FUNC4(&m->qlock);

	retval = 0;

	if (flags & FREAD) {
		if (FUNC1(m->inq) == 0)
			retval = ENXIO;
		else if (m->flags & M_RX)
			retval = EBUSY;
		if (retval)
			goto err;
	}
	if (flags & FWRITE) {
		if (FUNC1(m->outq) == 0)
			retval = ENXIO;
		else if (m->flags & M_TX)
			retval = EBUSY;
		if (retval)
			goto err;
	}
	m->busy++;

	/*
	 * TODO: Consider m->async = 0;
	 */

	if (flags & FREAD) {
		m->flags |= M_RX | M_RXEN;
		/*
	         * Only clear the inq, the outq might still have data to drain
	         * from a previous session
	         */
		FUNC0(m->inq);
		m->rchan = 0;
	}

	if (flags & FWRITE) {
		m->flags |= M_TX;
		m->wchan = 0;
	}
	m->synth_flags = flags & (FREAD | FWRITE);

	FUNC3(m, m->cookie, m->flags);


err:	FUNC5(&m->qlock);
	FUNC5(&m->lock);
	FUNC2(2, FUNC6("midisynth_open: return %d.\n", retval));
	return retval;
}