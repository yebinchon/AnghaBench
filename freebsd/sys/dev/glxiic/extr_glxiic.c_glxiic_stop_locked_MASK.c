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
struct glxiic_softc {int /*<<< orphan*/  smb_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  GLXIIC_SMB_CTRL1 ; 
 int GLXIIC_SMB_CTRL1_STOP_BIT ; 
 int /*<<< orphan*/  GLXIIC_SMB_SDA ; 
 int /*<<< orphan*/  GLXIIC_SMB_STS ; 
 int GLXIIC_SMB_STS_SDAST_BIT ; 
 int GLXIIC_SMB_STS_STASTR_BIT ; 
 int GLXIIC_SMB_STS_XMIT_BIT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct glxiic_softc*) ; 

__attribute__((used)) static void
FUNC4(struct glxiic_softc *sc)
{
	uint8_t status, ctrl1;

	FUNC0(sc);

	status = FUNC3(sc);

	ctrl1 = FUNC1(sc->smb_res, GLXIIC_SMB_CTRL1);
	FUNC2(sc->smb_res, GLXIIC_SMB_CTRL1,
	    ctrl1 | GLXIIC_SMB_CTRL1_STOP_BIT);

	/*
	 * Perform a dummy read of SDA in master receive mode to clear
	 * SDAST if set.
	 */
	if ((status & GLXIIC_SMB_STS_XMIT_BIT) == 0 &&
	    (status & GLXIIC_SMB_STS_SDAST_BIT) != 0)
	 	FUNC1(sc->smb_res, GLXIIC_SMB_SDA);

	/* Check stall after start bit and clear if needed */
	if ((status & GLXIIC_SMB_STS_STASTR_BIT) != 0) {
		FUNC2(sc->smb_res, GLXIIC_SMB_STS,
		    GLXIIC_SMB_STS_STASTR_BIT);
	}
}