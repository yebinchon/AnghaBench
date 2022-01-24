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
struct glxiic_softc {int /*<<< orphan*/  smb_res; int /*<<< orphan*/  iicbus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GLXIIC_SMB_SDA ; 
 int GLXIIC_SMB_STS_BER_BIT ; 
 int GLXIIC_SMB_STS_NEGACK_BIT ; 
 int GLXIIC_SMB_STS_NMATCH_BIT ; 
 int GLXIIC_SMB_STS_SDAST_BIT ; 
 int GLXIIC_SMB_STS_SLVSTP_BIT ; 
 int /*<<< orphan*/  GLXIIC_STATE_IDLE ; 
 int IIC_EBUSERR ; 
 int IIC_ESTATUS ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  INTR_NOACK ; 
 int /*<<< orphan*/  INTR_STOP ; 
 int /*<<< orphan*/  INTR_TRANSMIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct glxiic_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct glxiic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC7(struct glxiic_softc *sc, uint8_t status)
{
	uint8_t data;

	FUNC0(sc);

	if ((status & GLXIIC_SMB_STS_BER_BIT) != 0) {
		FUNC1("bus error in slave tx");
		return (IIC_EBUSERR);
	}

	if ((status & GLXIIC_SMB_STS_SLVSTP_BIT) != 0) {
		FUNC6(sc->iicbus, INTR_STOP, NULL);
		FUNC4(sc, GLXIIC_STATE_IDLE);
		return (IIC_NOERR);
	}

	if ((status & GLXIIC_SMB_STS_NEGACK_BIT) != 0) {
		FUNC6(sc->iicbus, INTR_NOACK, NULL);
		return (IIC_NOERR);
	}

	if ((status & GLXIIC_SMB_STS_NMATCH_BIT) != 0) {
		/* Handle repeated start in slave mode. */
		return (FUNC3(sc, status));
	}

	if ((status & GLXIIC_SMB_STS_SDAST_BIT) == 0) {
		FUNC1("not awaiting data in slave tx");
		return (IIC_ESTATUS);
	}

	FUNC6(sc->iicbus, INTR_TRANSMIT, &data);
	FUNC2(sc->smb_res, GLXIIC_SMB_SDA, data);

	FUNC5(sc);

	return (IIC_NOERR);
}