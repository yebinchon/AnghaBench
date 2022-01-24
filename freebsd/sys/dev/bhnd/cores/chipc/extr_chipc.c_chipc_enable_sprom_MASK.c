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
struct chipc_softc {int sprom_refcnt; TYPE_1__ caps; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  BHND_NVRAM_SRC_OTP 129 
#define  BHND_NVRAM_SRC_SPROM 128 
 int /*<<< orphan*/  FUNC0 (struct chipc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct chipc_softc*) ; 
 int FUNC2 (struct chipc_softc*) ; 
 int FUNC3 (struct chipc_softc*) ; 
 struct chipc_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct chipc_softc	*sc;
	int			 error;

	sc = FUNC4(dev);
	FUNC0(sc);

	/* Already enabled? */
	if (sc->sprom_refcnt >= 1) {
		sc->sprom_refcnt++;
		FUNC1(sc);

		return (0);
	}

	switch (sc->caps.nvram_src) {
	case BHND_NVRAM_SRC_SPROM:
		error = FUNC3(sc);
		break;
	case BHND_NVRAM_SRC_OTP:
		error = FUNC2(sc);
		break;
	default:
		error = 0;
		break;
	}

	/* Bump the reference count */
	if (error == 0)
		sc->sprom_refcnt++;

	FUNC1(sc);
	return (error);
}