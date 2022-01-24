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
struct intsmb_softc {int /*<<< orphan*/  io_res; scalar_t__ isbusy; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intsmb_softc*) ; 
 int /*<<< orphan*/  PIIX4_SMBHSTCNT ; 
 int PIIX4_SMBHSTCNT_INTREN ; 
 int PIIX4_SMBHSTSTAT_BUSY ; 
 int /*<<< orphan*/  PIIX4_SMBHSTSTS ; 
 int SMB_ETIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct intsmb_softc *sc)
{
	int error, i, status, tmp;

	FUNC0(sc);

	/* First, wait for busy to be set. */
	for (i = 0; i < 0x7fff; i++)
		if (FUNC1(sc->io_res, PIIX4_SMBHSTSTS) &
		    PIIX4_SMBHSTSTAT_BUSY)
			break;

	/* Wait for busy to clear. */
	for (i = 0; i < 0x7fff; i++) {
		status = FUNC1(sc->io_res, PIIX4_SMBHSTSTS);
		if (!(status & PIIX4_SMBHSTSTAT_BUSY)) {
			sc->isbusy = 0;
			error = FUNC3(sc->dev, status);
			return (error);
		}
	}

	/* Timed out waiting for busy to clear. */
	sc->isbusy = 0;
	tmp = FUNC1(sc->io_res, PIIX4_SMBHSTCNT);
	FUNC2(sc->io_res, PIIX4_SMBHSTCNT, tmp & ~PIIX4_SMBHSTCNT_INTREN);
	return (SMB_ETIMEOUT);
}