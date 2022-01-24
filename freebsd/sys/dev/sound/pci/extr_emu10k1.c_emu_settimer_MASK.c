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
struct sc_rchinfo {int spd; int blksz; scalar_t__ buffer; } ;
struct sc_pchinfo {int spd; int blksz; scalar_t__ buffer; } ;
struct sc_info {int nchans; int timerinterval; struct sc_rchinfo* rch; struct sc_pchinfo* pch; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMU_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct sc_info *sc)
{
	struct sc_pchinfo *pch;
	struct sc_rchinfo *rch;
	int i, tmp, rate;

	rate = 0;
	for (i = 0; i < sc->nchans; i++) {
		pch = &sc->pch[i];
		if (pch->buffer) {
			tmp = (pch->spd * FUNC2(pch->buffer))
			    / pch->blksz;
			if (tmp > rate)
				rate = tmp;
		}
	}

	for (i = 0; i < 3; i++) {
		rch = &sc->rch[i];
		if (rch->buffer) {
			tmp = (rch->spd * FUNC2(rch->buffer))
			    / rch->blksz;
			if (tmp > rate)
				rate = tmp;
		}
	}
	FUNC0(rate, 48, 9600);
	sc->timerinterval = 48000 / rate;
	FUNC1(sc, EMU_TIMER, sc->timerinterval & 0x03ff, 2);

	return sc->timerinterval;
}