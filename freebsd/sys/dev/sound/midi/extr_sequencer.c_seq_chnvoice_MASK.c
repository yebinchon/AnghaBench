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
typedef  int u_char ;
struct seq_softc {int unit; int /*<<< orphan*/  seq_lock; int /*<<< orphan*/  music; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
#define  MIDI_KEY_PRESSURE 130 
#define  MIDI_NOTEOFF 129 
#define  MIDI_NOTEON 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  cmdtab_seqcv ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 

__attribute__((used)) static int
FUNC10(struct seq_softc *scp, kobj_t md, u_char *event)
{
	int ret, voice;
	u_char cmd, chn, note, parm;

	ret = 0;
	cmd = event[2];
	chn = event[3];
	note = event[4];
	parm = event[5];

	FUNC6(&scp->seq_lock, MA_OWNED);

	FUNC0(5, FUNC9("seq_chnvoice: unit %d, dev %d, cmd %s,"
	    " chn %d, note %d, parm %d.\n", scp->unit, event[1],
	    FUNC5(cmd, cmdtab_seqcv), chn, note, parm));

	voice = FUNC2(md, chn, note);

	FUNC8(&scp->seq_lock);

	switch (cmd) {
	case MIDI_NOTEON:
		if (note < 128 || note == 255) {
#if 0
			if (scp->music && chn == 9) {
				/*
				 * This channel is a percussion. The note
				 * number is the patch number.
				 */
				/*
				mtx_unlock(&scp->seq_lock);
				if (SYNTH_SETINSTR(md, voice, 128 + note)
				    == EAGAIN) {
					mtx_lock(&scp->seq_lock);
					return (QUEUEFULL);
				}
				mtx_lock(&scp->seq_lock);
				*/
				note = 60;	/* Middle C. */
			}
#endif
			if (scp->music) {
				/*
				mtx_unlock(&scp->seq_lock);
				if (SYNTH_SETUPVOICE(md, voice, chn)
				    == EAGAIN) {
					mtx_lock(&scp->seq_lock);
					return (QUEUEFULL);
				}
				mtx_lock(&scp->seq_lock);
				*/
			}
			FUNC4(md, voice, note, parm);
		}
		break;
	case MIDI_NOTEOFF:
		FUNC3(md, voice, note, parm);
		break;
	case MIDI_KEY_PRESSURE:
		FUNC1(md, voice, parm);
		break;
	default:
		ret = 1;
		FUNC0(2, FUNC9("seq_chnvoice event type %d not handled\n",
		    event[1]));
		break;
	}

	FUNC7(&scp->seq_lock);
	return ret;
}