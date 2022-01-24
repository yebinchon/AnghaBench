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
struct uio {int uio_resid; } ;
struct snd_midi {int flags; int rchan; int /*<<< orphan*/  lock; int /*<<< orphan*/  qlock; int /*<<< orphan*/  inq; int /*<<< orphan*/  busy; } ;
struct cdev {struct snd_midi* si_drv1; } ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 int ENXIO ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int MIDI_RSIZE ; 
 int FUNC4 (int,int) ; 
 int M_RX ; 
 int O_NONBLOCK ; 
 int PCATCH ; 
 int PDROP ; 
 int FUNC5 (int*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (char*,int,struct uio*) ; 

int
FUNC10(struct cdev *i_dev, struct uio *uio, int ioflag)
{
#define MIDI_RSIZE 32
	struct snd_midi *m = i_dev->si_drv1;
	int retval;
	int used;
	char buf[MIDI_RSIZE];

	FUNC3(5, FUNC8("midiread: count=%lu\n",
	    (unsigned long)uio->uio_resid));

	retval = EIO;

	if (m == NULL)
		goto err0;

	FUNC6(&m->lock);
	FUNC6(&m->qlock);

	if (!(m->flags & M_RX))
		goto err1;

	while (uio->uio_resid > 0) {
		while (FUNC1(m->inq)) {
			retval = EWOULDBLOCK;
			if (ioflag & O_NONBLOCK)
				goto err1;
			FUNC7(&m->lock);
			m->rchan = 1;
			retval = FUNC5(&m->rchan, &m->qlock,
			    PCATCH | PDROP, "midi RX", 0);
			/*
			 * We slept, maybe things have changed since last
			 * dying check
			 */
			if (retval == EINTR)
				goto err0;
			if (m != i_dev->si_drv1)
				retval = ENXIO;
			/* if (retval && retval != ERESTART) */
			if (retval)
				goto err0;
			FUNC6(&m->lock);
			FUNC6(&m->qlock);
			m->rchan = 0;
			if (!m->busy)
				goto err1;
		}
		FUNC3(6, FUNC8("midi_read start\n"));
		/*
	         * At this point, it is certain that m->inq has data
	         */

		used = FUNC4(FUNC2(m->inq), uio->uio_resid);
		used = FUNC4(used, MIDI_RSIZE);

		FUNC3(6, FUNC8("midiread: uiomove cc=%d\n", used));
		FUNC0(m->inq, buf, used);
		retval = FUNC9(buf, used, uio);
		if (retval)
			goto err1;
	}

	/*
	 * If we Made it here then transfer is good
	 */
	retval = 0;
err1:	FUNC7(&m->qlock);
	FUNC7(&m->lock);
err0:	FUNC3(4, FUNC8("midi_read: ret %d\n", retval));
	return retval;
}