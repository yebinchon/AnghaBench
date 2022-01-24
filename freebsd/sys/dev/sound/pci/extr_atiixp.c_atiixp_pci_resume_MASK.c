#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ fmt; int flags; int /*<<< orphan*/ * channel; } ;
struct atiixp_info {scalar_t__ polling; TYPE_1__ rch; TYPE_1__ pch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATI_IXP_CHN_SUSPEND ; 
 int ENXIO ; 
 int /*<<< orphan*/  PCMTRIG_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct atiixp_info* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct atiixp_info *sc = FUNC8(dev);

	FUNC3(sc);
	/* reset / power up aclink */
	FUNC4(sc);
	FUNC5(sc);

	if (FUNC7(dev) == -1) {
		FUNC6(dev, "unable to reinitialize the mixer\n");
		return (ENXIO);
	}

	/*
	 * Resume channel activities. Reset channel format regardless
	 * of its previous state.
	 */
	if (sc->pch.channel != NULL) {
		if (sc->pch.fmt != 0)
			FUNC0(NULL, &sc->pch, sc->pch.fmt);
		if (sc->pch.flags & ATI_IXP_CHN_SUSPEND) {
			sc->pch.flags &= ~ATI_IXP_CHN_SUSPEND;
			FUNC1(NULL, &sc->pch, PCMTRIG_START);
		}
	}
	if (sc->rch.channel != NULL) {
		if (sc->rch.fmt != 0)
			FUNC0(NULL, &sc->rch, sc->rch.fmt);
		if (sc->rch.flags & ATI_IXP_CHN_SUSPEND) {
			sc->rch.flags &= ~ATI_IXP_CHN_SUSPEND;
			FUNC1(NULL, &sc->rch, PCMTRIG_START);
		}
	}

	/* enable interrupts */
	FUNC3(sc);
	if (sc->polling == 0)
		FUNC2(sc);
	FUNC5(sc);

	return (0);
}