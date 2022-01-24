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
struct TYPE_2__ {int nvram_src; } ;
struct chipc_softc {scalar_t__ sprom_refcnt; TYPE_1__ caps; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  BHND_NVRAM_SRC_OTP 129 
#define  BHND_NVRAM_SRC_SPROM 128 
 int /*<<< orphan*/  FUNC0 (struct chipc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct chipc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct chipc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct chipc_softc*) ; 
 struct chipc_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	struct chipc_softc	*sc;

	sc = FUNC5(dev);
	FUNC0(sc);

	/* Check reference count, skip disable if in-use. */
	FUNC2(sc->sprom_refcnt > 0, ("sprom refcnt overrelease"));
	sc->sprom_refcnt--;
	if (sc->sprom_refcnt > 0) {
		FUNC1(sc);
		return;
	}

	switch (sc->caps.nvram_src) {
	case BHND_NVRAM_SRC_SPROM:
		FUNC4(sc);
		break;
	case BHND_NVRAM_SRC_OTP:
		FUNC3(sc);
		break;
	default:
		break;
	}


	FUNC1(sc);
}