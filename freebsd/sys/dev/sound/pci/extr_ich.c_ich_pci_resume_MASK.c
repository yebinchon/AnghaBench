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
struct sc_info {int hasvra; int hasvrm; struct sc_chinfo* ch; int /*<<< orphan*/  codec; } ;
struct sc_chinfo {int /*<<< orphan*/  spd; int /*<<< orphan*/  blksz; scalar_t__ run_save; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*) ; 
 int /*<<< orphan*/  PCMTRIG_START ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sc_chinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sc_chinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sc_chinfo*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct sc_info *sc;
	int i;

	sc = FUNC10(dev);

	FUNC0(sc);
	/* Reinit audio device */
    	if (FUNC4(sc) == -1) {
		FUNC3(dev, "unable to reinitialize the card\n");
		FUNC1(sc);
		return (ENXIO);
	}
	/* Reinit mixer */
	FUNC5(sc);
	FUNC1(sc);
	FUNC2(sc->codec, sc->hasvra | sc->hasvrm);
    	if (FUNC9(dev) == -1) {
		FUNC3(dev, "unable to reinitialize the mixer\n");
		return (ENXIO);
	}
	/* Re-start DMA engines */
	for (i = 0 ; i < 3; i++) {
		struct sc_chinfo *ch = &sc->ch[i];
		if (sc->ch[i].run_save) {
			FUNC6(0, ch, ch->blksz);
			FUNC7(0, ch, ch->spd);
			FUNC8(0, ch, PCMTRIG_START);
		}
	}
	return (0);
}