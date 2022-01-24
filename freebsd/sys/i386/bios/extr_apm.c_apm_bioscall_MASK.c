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
typedef  int u_int ;
struct TYPE_3__ {int eax; } ;
struct TYPE_4__ {int /*<<< orphan*/  entry; TYPE_1__ r; int /*<<< orphan*/  seg; } ;
struct apm_softc {int bios_busy; scalar_t__ connectmode; TYPE_2__ bios; int /*<<< orphan*/  minorversion; int /*<<< orphan*/  majorversion; int /*<<< orphan*/  intversion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ APM_PROT32CONNECT ; 
 int BIOSCODE_FLAG ; 
 int BIOSDATA_FLAG ; 
 int /*<<< orphan*/  GBIOSCODE32_SEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEL_KPL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct apm_softc apm_softc ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC6(void)
{
	struct apm_softc *sc = &apm_softc;
	int errno = 0;
	u_int apm_func = sc->bios.r.eax & 0xff;

	if (!FUNC2(sc->intversion, apm_func)) {
		FUNC0("apm_bioscall: function 0x%x is not supported in v%d.%d\n",
		    apm_func, sc->majorversion, sc->minorversion);
		return (-1);
	}

	sc->bios_busy = 1;
	if (sc->connectmode == APM_PROT32CONNECT) {
		FUNC5(&sc->bios.seg,
				   BIOSCODE_FLAG | BIOSDATA_FLAG);
		errno = FUNC4(&sc->bios.r,
			       sc->bios.entry, FUNC1(GBIOSCODE32_SEL, SEL_KPL));
	} else {
		errno = FUNC3(&sc->bios, NULL);
	}
	sc->bios_busy = 0;
	return (errno);
}