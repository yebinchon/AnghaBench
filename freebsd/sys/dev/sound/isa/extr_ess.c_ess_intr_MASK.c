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
struct TYPE_4__ {int hwch; scalar_t__ stopping; int /*<<< orphan*/  buffer; scalar_t__ run; int /*<<< orphan*/  channel; } ;
struct TYPE_3__ {int hwch; scalar_t__ stopping; int /*<<< orphan*/  buffer; scalar_t__ run; int /*<<< orphan*/  channel; } ;
struct ess_info {TYPE_2__ rch; TYPE_1__ pch; } ;

/* Variables and functions */
 int DSP_DATA_AVAIL ; 
 int /*<<< orphan*/  PCMTRIG_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ess_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ess_info*) ; 
 int FUNC3 (struct ess_info*,int) ; 
 int FUNC4 (struct ess_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ess_info*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ess_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct ess_info*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
    	struct ess_info *sc = (struct ess_info *)arg;
	int src, pirq, rirq;

	FUNC2(sc);
	src = 0;
	if (FUNC1(sc, 0x7a) & 0x80)
		src |= 2;
	if (FUNC3(sc, 0x0c) & 0x01)
		src |= 1;

	pirq = (src & sc->pch.hwch)? 1 : 0;
	rirq = (src & sc->rch.hwch)? 1 : 0;

	if (pirq) {
		if (sc->pch.run) {
			FUNC6(sc);
			FUNC0(sc->pch.channel);
			FUNC2(sc);
		}
		if (sc->pch.stopping) {
			sc->pch.run = 0;
			FUNC8(sc->pch.buffer, PCMTRIG_STOP);
			sc->pch.stopping = 0;
			if (sc->pch.hwch == 1)
				FUNC7(sc, 0xb8, FUNC4(sc, 0xb8) & ~0x01);
			else
				FUNC5(sc, 0x78, FUNC1(sc, 0x78) & ~0x03);
		}
	}

	if (rirq) {
		if (sc->rch.run) {
			FUNC6(sc);
			FUNC0(sc->rch.channel);
			FUNC2(sc);
		}
		if (sc->rch.stopping) {
			sc->rch.run = 0;
			FUNC8(sc->rch.buffer, PCMTRIG_STOP);
			sc->rch.stopping = 0;
			/* XXX: will this stop audio2? */
			FUNC7(sc, 0xb8, FUNC4(sc, 0xb8) & ~0x01);
		}
	}

	if (src & 2)
		FUNC5(sc, 0x7a, FUNC1(sc, 0x7a) & ~0x80);
	if (src & 1)
    		FUNC3(sc, DSP_DATA_AVAIL);
	FUNC6(sc);
}