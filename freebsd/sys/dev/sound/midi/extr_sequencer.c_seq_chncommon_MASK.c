#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  int u_char ;
struct seq_softc {int unit; int /*<<< orphan*/  seq_lock; int /*<<< orphan*/  music; } ;
typedef  TYPE_4__* kobj_t ;
struct TYPE_12__ {size_t max_voice; int* map; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* bender ) (TYPE_4__*,int,int) ;int /*<<< orphan*/  vc_mtx; TYPE_2__ alloc; TYPE_1__* chn_info; } ;
struct TYPE_14__ {TYPE_3__ synth; int /*<<< orphan*/  midiunit; } ;
struct TYPE_11__ {int bender_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
#define  MIDI_CTL_CHANGE 130 
#define  MIDI_PGM_CHANGE 129 
#define  MIDI_PITCH_BEND 128 
 int QUEUEFULL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  cmdtab_seqccmn ; 
 size_t i ; 
 int key ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,int) ; 

__attribute__((used)) static int
FUNC10(struct seq_softc *scp, kobj_t md, u_char *event)
{
	int ret;
	u_short w14;
	u_char cmd, chn, p1;

	ret = 0;
	cmd = event[2];
	chn = event[3];
	p1 = event[4];
	w14 = *(u_short *)&event[6];

	FUNC0(5, FUNC7("seq_chncommon: unit %d, dev %d, cmd %s, chn %d,"
	    " p1 %d, w14 %d.\n", scp->unit, event[1],
	    FUNC4(cmd, cmdtab_seqccmn), chn, p1, w14));
	FUNC6(&scp->seq_lock);
	switch (cmd) {
	case MIDI_PGM_CHANGE:
		FUNC0(4, FUNC7("seq_chncommon pgmchn chn %d pg %d\n",
		    chn, p1));
		FUNC3(md, chn, p1);
		break;
	case MIDI_CTL_CHANGE:
		FUNC0(4, FUNC7("seq_chncommon ctlch chn %d pg %d %d\n",
		    chn, p1, w14));
		FUNC2(md, chn, p1, w14);
		break;
	case MIDI_PITCH_BEND:
		if (scp->music) {
			/*
		         * TODO: MIDI_PITCH_BEND
		         */
#if 0
			mtx_lock(&md->synth.vc_mtx);
			md->synth.chn_info[chn].bender_value = w14;
			if (md->midiunit >= 0) {
				/*
				 * Handle all of the notes playing on this
				 * channel.
				 */
				key = ((int)chn << 8);
				for (i = 0; i < md->synth.alloc.max_voice; i++)
					if ((md->synth.alloc.map[i] & 0xff00) == key) {
						mtx_unlock(&md->synth.vc_mtx);
						mtx_unlock(&scp->seq_lock);
						if (md->synth.bender(md, i, w14) == EAGAIN) {
							mtx_lock(&scp->seq_lock);
							return (QUEUEFULL);
						}
						mtx_lock(&scp->seq_lock);
					}
			} else {
				mtx_unlock(&md->synth.vc_mtx);
				mtx_unlock(&scp->seq_lock);
				if (md->synth.bender(md, chn, w14) == EAGAIN) {
					mtx_lock(&scp->seq_lock);
					return (QUEUEFULL);
				}
				mtx_lock(&scp->seq_lock);
			}
#endif
		} else
			FUNC1(md, chn, w14);
		break;
	default:
		ret = 1;
		FUNC0(2,
		    FUNC7("seq_chncommon event type %d not handled.\n",
		    event[1]));
		break;

	}
	FUNC5(&scp->seq_lock);
	return ret;
}