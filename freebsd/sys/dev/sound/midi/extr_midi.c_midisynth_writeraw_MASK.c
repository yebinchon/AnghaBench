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
typedef  int uint8_t ;
struct synth_midi {struct snd_midi* m; } ;
struct snd_midi {int flags; int wchan; int /*<<< orphan*/  lock; int /*<<< orphan*/  qlock; int /*<<< orphan*/  cookie; int /*<<< orphan*/  outq; int /*<<< orphan*/  busy; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int EINTR ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 size_t MIDI_WSIZE ; 
 int FUNC4 (int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_midi*,int /*<<< orphan*/ ,int) ; 
 int M_TX ; 
 int M_TXEN ; 
 int PCATCH ; 
 int PDROP ; 
 scalar_t__ midi_dumpraw ; 
 int FUNC6 (int*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

int
FUNC10(void *n, uint8_t *buf, size_t len)
{
	struct snd_midi *m = ((struct synth_midi *)n)->m;
	int retval;
	int used;
	int i;

	FUNC3(4, FUNC9("midisynth_writeraw\n"));

	retval = 0;

	if (m == NULL)
		return ENXIO;

	FUNC7(&m->lock);
	FUNC7(&m->qlock);

	if (!(m->flags & M_TX))
		goto err1;

	if (midi_dumpraw)
		FUNC9("midi dump: ");

	while (len > 0) {
		while (FUNC0(m->outq) == 0) {
			if (!(m->flags & M_TXEN)) {
				m->flags |= M_TXEN;
				FUNC5(m, m->cookie, m->flags);
			}
			FUNC8(&m->lock);
			m->wchan = 1;
			FUNC3(3, FUNC9("midisynth_writeraw msleep\n"));
			retval = FUNC6(&m->wchan, &m->qlock,
			    PCATCH | PDROP, "midi TX", 0);
			/*
			 * We slept, maybe things have changed since last
			 * dying check
			 */
			if (retval == EINTR)
				goto err0;

			if (retval)
				goto err0;
			FUNC7(&m->lock);
			FUNC7(&m->qlock);
			m->wchan = 0;
			if (!m->busy)
				goto err1;
		}

		/*
	         * We are certain than data can be placed on the queue
	         */

		used = FUNC4(FUNC0(m->outq), len);
		used = FUNC4(used, MIDI_WSIZE);
		FUNC3(5,
		    FUNC9("midi_synth: resid %zu len %jd avail %jd\n",
		    len, (intmax_t)FUNC2(m->outq),
		    (intmax_t)FUNC0(m->outq)));

		if (midi_dumpraw)
			for (i = 0; i < used; i++)
				FUNC9("%x ", buf[i]);

		FUNC1(m->outq, buf, used);
		len -= used;

		/*
	         * Inform the bottom half that data can be written
	         */
		if (!(m->flags & M_TXEN)) {
			m->flags |= M_TXEN;
			FUNC5(m, m->cookie, m->flags);
		}
	}
	/*
	 * If we Made it here then transfer is good
	 */
	if (midi_dumpraw)
		FUNC9("\n");

	retval = 0;
err1:	FUNC8(&m->qlock);
	FUNC8(&m->lock);
err0:	return retval;
}