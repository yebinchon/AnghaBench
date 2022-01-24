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
struct thread {int dummy; } ;
struct snd_midi {int flags; int busy; int /*<<< orphan*/  lock; int /*<<< orphan*/  qlock; int /*<<< orphan*/  cookie; } ;
struct cdev {struct snd_midi* si_drv1; } ;

/* Variables and functions */
 int ENXIO ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_midi*,int /*<<< orphan*/ ,int) ; 
 int M_RX ; 
 int M_RXEN ; 
 int M_TX ; 
 int M_TXEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 

int
FUNC5(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
	struct snd_midi *m = i_dev->si_drv1;
	int retval;
	int oldflags;

	FUNC0(1, FUNC4("midi_close %p %s %s\n", td,
	    flags & FREAD ? "M_RX" : "", flags & FWRITE ? "M_TX" : ""));

	if (m == NULL)
		return ENXIO;

	FUNC2(&m->lock);
	FUNC2(&m->qlock);

	if ((flags & FREAD && !(m->flags & M_RX)) ||
	    (flags & FWRITE && !(m->flags & M_TX))) {
		retval = ENXIO;
		goto err;
	}
	m->busy--;

	oldflags = m->flags;

	if (flags & FREAD)
		m->flags &= ~(M_RX | M_RXEN);
	if (flags & FWRITE)
		m->flags &= ~M_TX;

	if ((m->flags & (M_TXEN | M_RXEN)) != (oldflags & (M_RXEN | M_TXEN)))
		FUNC1(m, m->cookie, m->flags);

	FUNC0(1, FUNC4("midi_close: closed, busy = %d.\n", m->busy));

	FUNC3(&m->qlock);
	FUNC3(&m->lock);
	retval = 0;
err:	return retval;
}