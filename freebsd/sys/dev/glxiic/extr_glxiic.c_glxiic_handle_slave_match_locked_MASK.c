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
typedef  int uint8_t ;
struct glxiic_softc {int addr; int /*<<< orphan*/  iicbus; int /*<<< orphan*/  smb_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GLXIIC_SMB_CTRL_STS ; 
 int GLXIIC_SMB_CTRL_STS_GCMTCH_BIT ; 
 int GLXIIC_SMB_CTRL_STS_MATCH_BIT ; 
 int GLXIIC_SMB_STS_XMIT_BIT ; 
 int /*<<< orphan*/  GLXIIC_STATE_SLAVE_RX ; 
 int /*<<< orphan*/  GLXIIC_STATE_SLAVE_TX ; 
 int IIC_ESTATUS ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  INTR_GENERAL ; 
 int /*<<< orphan*/  INTR_START ; 
 int LSB ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct glxiic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC5(struct glxiic_softc *sc, uint8_t status)
{
	uint8_t ctrl_sts, addr;

	FUNC0(sc);

	ctrl_sts = FUNC2(sc->smb_res, GLXIIC_SMB_CTRL_STS);

	if ((ctrl_sts & GLXIIC_SMB_CTRL_STS_MATCH_BIT) != 0) {
		if ((status & GLXIIC_SMB_STS_XMIT_BIT) != 0) {
			addr = sc->addr | LSB;
			FUNC3(sc,
			    GLXIIC_STATE_SLAVE_TX);
		} else {
			addr = sc->addr & ~LSB;
			FUNC3(sc,
			    GLXIIC_STATE_SLAVE_RX);
		}
		FUNC4(sc->iicbus, INTR_START, &addr);
	} else if ((ctrl_sts & GLXIIC_SMB_CTRL_STS_GCMTCH_BIT) != 0) {
		addr = 0;
		FUNC3(sc, GLXIIC_STATE_SLAVE_RX);
		FUNC4(sc->iicbus, INTR_GENERAL, &addr);
	} else {
		FUNC1("unknown slave match");
		return (IIC_ESTATUS);
	}

	return (IIC_NOERR);
}