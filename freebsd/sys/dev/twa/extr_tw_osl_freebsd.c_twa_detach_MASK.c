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
struct twa_softc {scalar_t__ open; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ TW_INT32 ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 struct twa_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct twa_softc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct twa_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct twa_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static TW_INT32
FUNC5(device_t dev)
{
	struct twa_softc	*sc = FUNC0(dev);
	TW_INT32		error;

	FUNC1(3, sc, "entered");

	error = EBUSY;
	if (sc->open) {
		FUNC3(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2014,
			"Device open",
			error);
		goto out;
	}

	/* Shut the controller down. */
	if ((error = FUNC4(dev)))
		goto out;

	/* Free all resources associated with this controller. */
	FUNC2(sc);
	error = 0;

out:
	return(error);
}