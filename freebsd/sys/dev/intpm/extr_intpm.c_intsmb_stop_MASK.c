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
struct intsmb_softc {int /*<<< orphan*/  io_res; scalar_t__ isbusy; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; scalar_t__ poll; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct intsmb_softc*) ; 
 int PCATCH ; 
 int PIIX4_SMBHSTSTAT_BUSY ; 
 int PIIX4_SMBHSTSTAT_INTR ; 
 int /*<<< orphan*/  PIIX4_SMBHSTSTS ; 
 int /*<<< orphan*/  PIIX4_SMBSLVCNT ; 
 int /*<<< orphan*/  PIIX4_SMBSLVCNT_ALTEN ; 
 int PWAIT ; 
 int SMB_EABORT ; 
 int SMB_ETIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cold ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct intsmb_softc*) ; 
 int FUNC6 (struct intsmb_softc*,int /*<<< orphan*/ *,int,char*,int) ; 

__attribute__((used)) static int
FUNC7(struct intsmb_softc *sc)
{
	int error, status;

	FUNC0(sc);

	if (sc->poll || cold)
		/* So that it can use device during device probe on SMBus. */
		return (FUNC5(sc));

	error = FUNC6(sc, &sc->lock, PWAIT | PCATCH, "SMBWAI", hz / 8);
	if (error == 0) {
		status = FUNC1(sc->io_res, PIIX4_SMBHSTSTS);
		if (!(status & PIIX4_SMBHSTSTAT_BUSY)) {
			error = FUNC4(sc->dev, status);
			if (error == 0 && !(status & PIIX4_SMBHSTSTAT_INTR))
				FUNC3(sc->dev, "unknown cause why?\n");
#ifdef ENABLE_ALART
			bus_write_1(sc->io_res, PIIX4_SMBSLVCNT,
			    PIIX4_SMBSLVCNT_ALTEN);
#endif
			return (error);
		}
	}

	/* Timeout Procedure. */
	sc->isbusy = 0;

	/* Re-enable suppressed interrupt from slave part. */
	FUNC2(sc->io_res, PIIX4_SMBSLVCNT, PIIX4_SMBSLVCNT_ALTEN);
	if (error == EWOULDBLOCK)
		return (SMB_ETIMEOUT);
	else
		return (SMB_EABORT);
}