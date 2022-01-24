#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_midi {struct snd_midi* synth; int /*<<< orphan*/  lock; int /*<<< orphan*/  qlock; int /*<<< orphan*/  outq; int /*<<< orphan*/  inq; int /*<<< orphan*/  cookie; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 struct snd_midi* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_midi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_MIDI ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct snd_midi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_midi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  midi_devs ; 
 int /*<<< orphan*/  midistat_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct snd_midi *m, int midiuninit)
{
	FUNC10(&midistat_lock, SA_XLOCKED);
	FUNC6(&m->lock, MA_OWNED);

	FUNC1(3, FUNC9("midi_destroy\n"));
	m->dev->si_drv1 = NULL;
	FUNC8(&m->lock);	/* XXX */
	FUNC4(m->dev);
	FUNC3(&midi_devs, m, link);
	if (midiuninit)
		FUNC2(m, m->cookie);
	FUNC5(FUNC0(m->inq), M_MIDI);
	FUNC5(FUNC0(m->outq), M_MIDI);
	FUNC7(&m->qlock);
	FUNC7(&m->lock);
	FUNC5(m->synth, M_MIDI);
	FUNC5(m, M_MIDI);
	return 0;
}