#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int hwch; int /*<<< orphan*/  channel; scalar_t__ stopping; } ;
struct TYPE_3__ {int hwch; int /*<<< orphan*/  channel; scalar_t__ stopping; } ;
struct ess_info {scalar_t__ simplex_dir; TYPE_2__ rch; TYPE_1__ pch; scalar_t__ duplex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DSP_DATA_AVAIL ; 
 scalar_t__ PCMDIR_PLAY ; 
 scalar_t__ PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ess_info*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ess_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ess_info*) ; 
 int FUNC5 (struct ess_info*,int) ; 
 int FUNC6 (struct ess_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ess_info*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ess_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct ess_info*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static void
FUNC11(void *arg)
{
    	struct ess_info *sc = (struct ess_info *)arg;
	int src, pirq = 0, rirq = 0;

	FUNC4(sc);
	src = 0;
	if (FUNC3(sc, 0x7a) & 0x80)
		src |= 2;
	if (FUNC5(sc, 0x0c) & 0x01)
		src |= 1;

	if (src == 0) {
		FUNC8(sc);
		return;
	}

	if (sc->duplex) {
		pirq = (src & sc->pch.hwch)? 1 : 0;
		rirq = (src & sc->rch.hwch)? 1 : 0;
	} else {
		if (sc->simplex_dir == PCMDIR_PLAY)
			pirq = 1;
		if (sc->simplex_dir == PCMDIR_REC)
			rirq = 1;
		if (!pirq && !rirq)
			FUNC10("solo: IRQ neither playback nor rec!\n");
	}

	FUNC0(FUNC10("ess_intr: pirq:%d rirq:%d\n",pirq,rirq));

	if (pirq) {
		if (sc->pch.stopping) {
			FUNC2(sc, sc->pch.hwch, 0);
			sc->pch.stopping = 0;
			if (sc->pch.hwch == 1)
				FUNC9(sc, 0xb8, FUNC6(sc, 0xb8) & ~0x01);
			else
				FUNC7(sc, 0x78, FUNC3(sc, 0x78) & ~0x03);
		}
		FUNC8(sc);
		FUNC1(sc->pch.channel);
		FUNC4(sc);
	}

	if (rirq) {
		if (sc->rch.stopping) {
			FUNC2(sc, sc->rch.hwch, 0);
			sc->rch.stopping = 0;
			/* XXX: will this stop audio2? */
			FUNC9(sc, 0xb8, FUNC6(sc, 0xb8) & ~0x01);
		}
		FUNC8(sc);
		FUNC1(sc->rch.channel);
		FUNC4(sc);
	}

	if (src & 2)
		FUNC7(sc, 0x7a, FUNC3(sc, 0x7a) & ~0x80);
	if (src & 1)
    		FUNC5(sc, DSP_DATA_AVAIL);

	FUNC8(sc);
}