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
struct twa_softc {int /*<<< orphan*/  ctlr_handle; int /*<<< orphan*/ * watchdog_callout; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct twa_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct twa_softc*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct twa_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct twa_softc*) ; 

__attribute__((used)) static TW_INT32
FUNC6(device_t dev)
{
	struct twa_softc	*sc = FUNC1(dev);
	TW_INT32		error = 0;

	FUNC3(3, sc, "entered");

	/* Disconnect interrupts. */
	error = FUNC5(sc);

	/* Stop watchdog task. */
	FUNC0(&(sc->watchdog_callout[0]));
	FUNC0(&(sc->watchdog_callout[1]));

	/* Disconnect from the controller. */
	if ((error = FUNC2(&(sc->ctlr_handle), 0))) {
		FUNC4(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2015,
			"Failed to shutdown Common Layer/controller",
			error);
	}
	return(error);
}