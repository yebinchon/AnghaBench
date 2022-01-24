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
typedef  int uint32_t ;
typedef  int u_char ;
struct twsi_softc {int /*<<< orphan*/  reg_status; int /*<<< orphan*/  reg_data; int /*<<< orphan*/  reg_control; int /*<<< orphan*/  mutex; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IIC_ENOACK ; 
 int IIC_ESTATUS ; 
 int IIC_ETIMEOUT ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int TWSI_CONTROL_IFLG ; 
 int /*<<< orphan*/  TWSI_CONTROL_START ; 
 int FUNC1 (struct twsi_softc*,int /*<<< orphan*/ ) ; 
 int TWSI_STATUS_ADDR_R_ACK ; 
 int TWSI_STATUS_ADDR_W_ACK ; 
 int TWSI_STATUS_RPTD_START ; 
 int TWSI_STATUS_START ; 
 int /*<<< orphan*/  FUNC2 (struct twsi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct twsi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct twsi_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct twsi_softc*,int,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev, struct twsi_softc *sc, int32_t mask,
    u_char slave, int timeout)
{
	int read_access, iflg_set = 0;
	uint32_t status;

	FUNC4(&sc->mutex, MA_OWNED);

	if (mask == TWSI_STATUS_RPTD_START)
		/* read IFLG to know if it should be cleared later; from NBSD */
		iflg_set = FUNC1(sc, sc->reg_control) & TWSI_CONTROL_IFLG;

	FUNC3(dev, "send start\n");
	FUNC6(sc, TWSI_CONTROL_START);

	if (mask == TWSI_STATUS_RPTD_START && iflg_set) {
		FUNC3(dev, "IFLG set, clearing (mask=%x)\n", mask);
		FUNC5(sc);
	}

	/*
	 * Without this delay we timeout checking IFLG if the timeout is 0.
	 * NBSD driver always waits here too.
	 */
	FUNC0(1000);

	if (FUNC7(sc, timeout, TWSI_CONTROL_IFLG)) {
		FUNC3(dev, "timeout sending %sSTART condition\n",
		    mask == TWSI_STATUS_START ? "" : "repeated ");
		return (IIC_ETIMEOUT);
	}

	status = FUNC1(sc, sc->reg_status);
	FUNC3(dev, "status=%x\n", status);

	if (status != mask) {
		FUNC3(dev, "wrong status (%02x) after sending %sSTART condition\n",
		    status, mask == TWSI_STATUS_START ? "" : "repeated ");
		return (IIC_ESTATUS);
	}

	FUNC2(sc, sc->reg_data, slave);
	FUNC5(sc);
	FUNC0(1000);

	if (FUNC7(sc, timeout, TWSI_CONTROL_IFLG)) {
		FUNC3(dev, "timeout sending slave address (timeout=%d)\n", timeout);
		return (IIC_ETIMEOUT);
	}

	read_access = (slave & 0x1) ? 1 : 0;
	status = FUNC1(sc, sc->reg_status);
	if (status != (read_access ?
	    TWSI_STATUS_ADDR_R_ACK : TWSI_STATUS_ADDR_W_ACK)) {
		FUNC3(dev, "no ACK (status: %02x) after sending slave address\n",
		    status);
		return (IIC_ENOACK);
	}

	return (IIC_NOERR);
}