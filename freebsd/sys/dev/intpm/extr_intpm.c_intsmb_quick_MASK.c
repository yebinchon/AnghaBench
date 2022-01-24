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
typedef  int /*<<< orphan*/  u_char ;
struct intsmb_softc {int /*<<< orphan*/  io_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intsmb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct intsmb_softc*) ; 
 int /*<<< orphan*/  LSB ; 
 int /*<<< orphan*/  PIIX4_SMBHSTADD ; 
 int /*<<< orphan*/  PIIX4_SMBHSTCNT_PROT_QUICK ; 
 int SMB_EINVAL ; 
#define  SMB_QREAD 129 
#define  SMB_QWRITE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intsmb_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct intsmb_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct intsmb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct intsmb_softc*) ; 

__attribute__((used)) static int
FUNC7(device_t dev, u_char slave, int how)
{
	struct intsmb_softc *sc = FUNC3(dev);
	int error;
	u_char data;

	data = slave;

	/* Quick command is part of Address, I think. */
	switch(how) {
	case SMB_QWRITE:
		data &= ~LSB;
		break;
	case SMB_QREAD:
		data |= LSB;
		break;
	default:
		return (SMB_EINVAL);
	}

	FUNC0(sc);
	error = FUNC4(sc);
	if (error) {
		FUNC1(sc);
		return (error);
	}
	FUNC2(sc->io_res, PIIX4_SMBHSTADD, data);
	FUNC5(sc, PIIX4_SMBHSTCNT_PROT_QUICK, 0);
	error = FUNC6(sc);
	FUNC1(sc);
	return (error);
}