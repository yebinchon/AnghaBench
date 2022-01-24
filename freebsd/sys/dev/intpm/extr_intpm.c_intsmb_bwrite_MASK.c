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
typedef  int u_char ;
struct intsmb_softc {int /*<<< orphan*/  io_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intsmb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct intsmb_softc*) ; 
 int LSB ; 
 int /*<<< orphan*/  PIIX4_SMBBLKDAT ; 
 int /*<<< orphan*/  PIIX4_SMBHSTADD ; 
 int /*<<< orphan*/  PIIX4_SMBHSTCMD ; 
 int /*<<< orphan*/  PIIX4_SMBHSTCNT ; 
 int /*<<< orphan*/  PIIX4_SMBHSTCNT_PROT_BLOCK ; 
 int /*<<< orphan*/  PIIX4_SMBHSTDAT0 ; 
 int SMBBLOCKTRANS_MAX ; 
 int SMB_EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct intsmb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct intsmb_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct intsmb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct intsmb_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, u_char slave, char cmd, u_char count, char *buf)
{
	struct intsmb_softc *sc = FUNC4(dev);
	int error, i;

	if (count > SMBBLOCKTRANS_MAX || count == 0)
		return (SMB_EINVAL);

	FUNC0(sc);
	error = FUNC5(sc);
	if (error) {
		FUNC1(sc);
		return (error);
	}

	/* Reset internal array index. */
	FUNC2(sc->io_res, PIIX4_SMBHSTCNT);

	FUNC3(sc->io_res, PIIX4_SMBHSTADD, slave & ~LSB);
	FUNC3(sc->io_res, PIIX4_SMBHSTCMD, cmd);
	for (i = 0; i < count; i++)
		FUNC3(sc->io_res, PIIX4_SMBBLKDAT, buf[i]);
	FUNC3(sc->io_res, PIIX4_SMBHSTDAT0, count);
	FUNC6(sc, PIIX4_SMBHSTCNT_PROT_BLOCK, 0);
	error = FUNC7(sc);
	FUNC1(sc);
	return (error);
}