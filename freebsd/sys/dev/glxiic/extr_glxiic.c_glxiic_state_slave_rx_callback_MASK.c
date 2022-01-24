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
struct glxiic_softc {int /*<<< orphan*/  iicbus; int /*<<< orphan*/  smb_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GLXIIC_SMB_SDA ; 
 int GLXIIC_SMB_STS_BER_BIT ; 
 int GLXIIC_SMB_STS_NMATCH_BIT ; 
 int GLXIIC_SMB_STS_SDAST_BIT ; 
 int GLXIIC_SMB_STS_SLVSTP_BIT ; 
 int /*<<< orphan*/  GLXIIC_STATE_IDLE ; 
 int IIC_EBUSERR ; 
 int IIC_ESTATUS ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  INTR_RECEIVE ; 
 int /*<<< orphan*/  INTR_STOP ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
		FUNC1("bus error in slave rx");
		return (IIC_EBUSERR);
	}

	if ((status & GLXIIC_SMB_STS_SLVSTP_BIT) != 0) {
		FUNC6(sc->iicbus, INTR_STOP, NULL);
		FUNC4(sc, GLXIIC_STATE_IDLE);
		return (IIC_NOERR);
	}

	if ((status & GLXIIC_SMB_STS_NMATCH_BIT) != 0) {
		/* Handle repeated start in slave mode. */
		return (FUNC3(sc, status));
	}

	if ((status & GLXIIC_SMB_STS_SDAST_BIT) == 0) {
		FUNC1("no pending data in slave rx");
		return (IIC_ESTATUS);
	}

	data = FUNC2(sc->smb_res, GLXIIC_SMB_SDA);
	FUNC6(sc->iicbus, INTR_RECEIVE, &data);

	FUNC5(sc);

	return (IIC_NOERR);
}