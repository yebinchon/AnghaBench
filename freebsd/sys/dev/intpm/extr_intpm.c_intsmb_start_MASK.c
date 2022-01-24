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
struct intsmb_softc {int /*<<< orphan*/  io_res; int /*<<< orphan*/  poll; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intsmb_softc*) ; 
 int /*<<< orphan*/  PIIX4_SMBHSTCNT ; 
 unsigned char PIIX4_SMBHSTCNT_INTREN ; 
 unsigned char PIIX4_SMBHSTCNT_START ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  cold ; 

__attribute__((used)) static void
FUNC3(struct intsmb_softc *sc, unsigned char cmd, int nointr)
{
	unsigned char tmp;

	FUNC0(sc);
	tmp = FUNC1(sc->io_res, PIIX4_SMBHSTCNT);
	tmp &= 0xe0;
	tmp |= cmd;
	tmp |= PIIX4_SMBHSTCNT_START;

	/* While not in autoconfiguration enable interrupts. */
	if (!sc->poll && !cold && !nointr)
		tmp |= PIIX4_SMBHSTCNT_INTREN;
	FUNC2(sc->io_res, PIIX4_SMBHSTCNT, tmp);
}