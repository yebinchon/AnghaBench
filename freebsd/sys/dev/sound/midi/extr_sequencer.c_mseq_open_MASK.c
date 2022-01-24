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
struct seq_softc {int unit; int busy; int fflags; int music; size_t midi_number; int maxunits; int out_water; int /*<<< orphan*/ ** midis; int /*<<< orphan*/  seq_lock; int /*<<< orphan*/  out_q; int /*<<< orphan*/ * midi_flags; int /*<<< orphan*/  mapper_cookie; int /*<<< orphan*/  mapper; } ;
struct cdev {struct seq_softc* si_drv1; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (struct cdev*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ SND_DEV_MUSIC ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct seq_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct seq_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct seq_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct seq_softc*) ; 

int
FUNC13(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
	struct seq_softc *scp = i_dev->si_drv1;
	int i;

	if (scp == NULL)
		return ENXIO;

	FUNC2(3, FUNC9("seq_open: scp %p unit %d, flags 0x%x.\n",
	    scp, scp->unit, flags));

	/*
	 * Mark this device busy.
	 */

	FUNC7(&scp->seq_lock);
	if (scp->busy) {
		FUNC8(&scp->seq_lock);
		FUNC2(2, FUNC9("seq_open: unit %d is busy.\n", scp->unit));
		return EBUSY;
	}
	scp->fflags = flags;
	/*
	if ((scp->fflags & O_NONBLOCK) != 0)
		scp->flags |= SEQ_F_NBIO;
		*/
	scp->music = FUNC0(i_dev) == SND_DEV_MUSIC;

	/*
	 * Enumerate the available midi devices
	 */
	scp->midi_number = 0;
	scp->maxunits = FUNC6(scp->mapper, &scp->mapper_cookie);

	if (scp->maxunits == 0)
		FUNC2(2, FUNC9("seq_open: no midi devices\n"));

	for (i = 0; i < scp->maxunits; i++) {
		scp->midis[scp->midi_number] =
		    FUNC5(scp->mapper, scp->mapper_cookie, i);
		if (scp->midis[scp->midi_number]) {
			if (FUNC3(scp->midis[scp->midi_number], scp,
				scp->fflags) != 0)
				scp->midis[scp->midi_number] = NULL;
			else {
				scp->midi_flags[scp->midi_number] =
				    FUNC4(scp->midis[scp->midi_number]);
				scp->midi_number++;
			}
		}
	}

	FUNC10(scp, 60, 100);

	FUNC11(scp);
	FUNC12(scp);
	/*
	 * actually, if we're in rdonly mode, we should start the timer
	 */
	/*
	 * TODO: Handle recording now
	 */

	scp->out_water = FUNC1(scp->out_q) / 2;

	scp->busy = 1;
	FUNC8(&scp->seq_lock);

	FUNC2(2, FUNC9("seq_open: opened, mode %s.\n",
	    scp->music ? "music" : "sequencer"));
	FUNC2(2,
	    FUNC9("Sequencer %d %p opened maxunits %d midi_number %d:\n",
		scp->unit, scp, scp->maxunits, scp->midi_number));
	for (i = 0; i < scp->midi_number; i++)
		FUNC2(3, FUNC9("  midi %d %p\n", i, scp->midis[i]));

	return 0;
}