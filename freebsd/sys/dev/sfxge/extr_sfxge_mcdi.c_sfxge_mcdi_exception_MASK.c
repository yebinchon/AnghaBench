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
struct sfxge_softc {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ efx_mcdi_exception_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EFX_MCDI_EXCEPTION_MC_BADASSERT ; 
 scalar_t__ EFX_MCDI_EXCEPTION_MC_REBOOT ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mcdi_exception ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_softc*) ; 

__attribute__((used)) static void
FUNC5(void *arg, efx_mcdi_exception_t eme)
{
	struct sfxge_softc *sc;
	device_t dev;

	sc = (struct sfxge_softc *)arg;
	dev = sc->dev;

	FUNC3(LOG_WARNING, "[%s%d] MC_%s", FUNC1(dev),
	    FUNC2(dev),
	    (eme == EFX_MCDI_EXCEPTION_MC_REBOOT)
	    ? "REBOOT"
	    : (eme == EFX_MCDI_EXCEPTION_MC_BADASSERT)
	    ? "BADASSERT" : "UNKNOWN");

	FUNC0(mcdi_exception);

	FUNC4(sc);
}