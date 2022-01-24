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
struct sc_pcminfo {int /*<<< orphan*/  dev; struct sc_info* sc; } ;
struct sc_info {int /*<<< orphan*/  lock; } ;
struct sc_chinfo {int /*<<< orphan*/  run; struct sc_pcminfo* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  PCMTRIG_ABORT 132 
#define  PCMTRIG_EMLDMARD 131 
#define  PCMTRIG_EMLDMAWR 130 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct sc_chinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_chinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_chinfo*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sc_chinfo*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(kobj_t obj, void *data, int go)
{
	struct sc_pcminfo *scp;
	struct sc_chinfo *ch;
	struct sc_info *sc;

	ch = data;
	scp = ch->parent;
	sc = scp->sc;

	FUNC7(sc->lock);
	switch (go) {
	case PCMTRIG_START:
#if 0
		device_printf(scp->dev, "hdspechan_trigger(): start\n");
#endif
		FUNC5(ch, 1);
		FUNC6(ch);
		FUNC3(sc);
		break;

	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
#if 0
		device_printf(scp->dev, "hdspechan_trigger(): stop or abort\n");
#endif
		FUNC1(ch);
		FUNC5(ch, 0);
		FUNC4(sc);
		break;

	case PCMTRIG_EMLDMAWR:
	case PCMTRIG_EMLDMARD:
		if(ch->run)
			FUNC0(ch);
		break;
	}

	FUNC8(sc->lock);

	return (0);
}