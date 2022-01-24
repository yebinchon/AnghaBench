#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct glxiic_softc {int ndata; int /*<<< orphan*/  smb_res; TYPE_1__* msg; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int flags; int slave; int len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GLXIIC_SMB_CTRL1 ; 
 int GLXIIC_SMB_CTRL1_ACK_BIT ; 
 int /*<<< orphan*/  GLXIIC_SMB_SDA ; 
 int GLXIIC_SMB_STS_BER_BIT ; 
 int GLXIIC_SMB_STS_MASTER_BIT ; 
 int GLXIIC_SMB_STS_SDAST_BIT ; 
 int /*<<< orphan*/  GLXIIC_STATE_MASTER_RX ; 
 int /*<<< orphan*/  GLXIIC_STATE_MASTER_STOP ; 
 int /*<<< orphan*/  GLXIIC_STATE_MASTER_TX ; 
 int IIC_EBUSERR ; 
 int IIC_ESTATUS ; 
 int IIC_M_RD ; 
 int IIC_NOERR ; 
 int LSB ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct glxiic_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct glxiic_softc *sc, uint8_t status)
{
	uint8_t slave;
	uint8_t ctrl1;

	FUNC0(sc);

	if ((status & GLXIIC_SMB_STS_BER_BIT) != 0) {
		FUNC1("bus error after master start");
		return (IIC_EBUSERR);
	}

	if ((status & GLXIIC_SMB_STS_MASTER_BIT) == 0) {
		FUNC1("not bus master after master start");
		return (IIC_ESTATUS);
	}

	if ((status & GLXIIC_SMB_STS_SDAST_BIT) == 0) {
		FUNC1("not awaiting address in master addr");
		return (IIC_ESTATUS);
	}

	if ((sc->msg->flags & IIC_M_RD) != 0) {
		slave = sc->msg->slave | LSB;
		FUNC4(sc, GLXIIC_STATE_MASTER_RX);
	} else {
		slave = sc->msg->slave & ~LSB;
		FUNC4(sc, GLXIIC_STATE_MASTER_TX);
	}

	sc->data = sc->msg->buf;
	sc->ndata = sc->msg->len;

	/* Handle address-only transfer. */
	if (sc->ndata == 0)
		FUNC4(sc, GLXIIC_STATE_MASTER_STOP);

	FUNC3(sc->smb_res, GLXIIC_SMB_SDA, slave);

	if ((sc->msg->flags & IIC_M_RD) != 0 && sc->ndata == 1) {
		/* Last byte from slave, set NACK. */
		ctrl1 = FUNC2(sc->smb_res, GLXIIC_SMB_CTRL1);
		FUNC3(sc->smb_res, GLXIIC_SMB_CTRL1,
		    ctrl1 | GLXIIC_SMB_CTRL1_ACK_BIT);
	}

	return (IIC_NOERR);
}