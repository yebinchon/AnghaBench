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
typedef  int u_int32_t ;
struct sc_info {int psize; int* blk; int* intr; int rsize; int /*<<< orphan*/  lock; struct sc_chinfo* chan; int /*<<< orphan*/  dev; } ;
struct sc_chinfo {int blk; int /*<<< orphan*/  channel; scalar_t__ run; } ;

/* Variables and functions */
 int ENVY24HT_CHAN_PLAY_DAC1 ; 
 int ENVY24HT_CHAN_PLAY_SPDIF ; 
 int ENVY24HT_CHAN_REC_ADC1 ; 
 int ENVY24HT_CHAN_REC_SPDIF ; 
 int /*<<< orphan*/  ENVY24HT_MT_PCNT ; 
 int /*<<< orphan*/  ENVY24HT_MT_RCNT ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *p)
{
	struct sc_info *sc = (struct sc_info *)p;
	struct sc_chinfo *ch;
	u_int32_t ptr, dsize, feed;
	int i;

#if(0)
	device_printf(sc->dev, "envy24ht_intr()\n");
#endif
	FUNC6(sc->lock);
	if (FUNC2(sc, PCMDIR_PLAY)) {
#if(0)
		device_printf(sc->dev, "envy24ht_intr(): play\n");
#endif
		dsize = sc->psize / 4;
		ptr = dsize - FUNC3(sc, ENVY24HT_MT_PCNT, 2) - 1;
#if(0)
		device_printf(sc->dev, "envy24ht_intr(): ptr = %d-->", ptr);
#endif
		ptr -= ptr % sc->blk[0];
		feed = (ptr + dsize - sc->intr[0]) % dsize; 
#if(0)
		printf("%d intr = %d feed = %d\n", ptr, sc->intr[0], feed);
#endif
		for (i = ENVY24HT_CHAN_PLAY_DAC1; i <= ENVY24HT_CHAN_PLAY_SPDIF; i++) {
			ch = &sc->chan[i];
#if(0)
			if (ch->run)
				device_printf(sc->dev, "envy24ht_intr(): chan[%d].blk = %d\n", i, ch->blk);
#endif
			if (ch->run && ch->blk <= feed) {
				FUNC7(sc->lock);
				FUNC0(ch->channel);
				FUNC6(sc->lock);
			}
		}
		sc->intr[0] = ptr;
		FUNC4(sc, PCMDIR_PLAY);
	}
	if (FUNC2(sc, PCMDIR_REC)) {
#if(0)
		device_printf(sc->dev, "envy24ht_intr(): rec\n");
#endif
		dsize = sc->rsize / 4;
		ptr = dsize - FUNC3(sc, ENVY24HT_MT_RCNT, 2) - 1;
		ptr -= ptr % sc->blk[1];
		feed = (ptr + dsize - sc->intr[1]) % dsize; 
		for (i = ENVY24HT_CHAN_REC_ADC1; i <= ENVY24HT_CHAN_REC_SPDIF; i++) {
			ch = &sc->chan[i];
			if (ch->run && ch->blk <= feed) {
				FUNC7(sc->lock);
				FUNC0(ch->channel);
				FUNC6(sc->lock);
			}
		}
		sc->intr[1] = ptr;
		FUNC4(sc, PCMDIR_REC);
	}
	FUNC7(sc->lock);

	return;
}