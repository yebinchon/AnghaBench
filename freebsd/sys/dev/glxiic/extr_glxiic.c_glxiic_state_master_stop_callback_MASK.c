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
struct glxiic_softc {scalar_t__ nmsgs; int error; TYPE_1__* msg; int /*<<< orphan*/  smb_res; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GLXIIC_SMB_CTRL1 ; 
 int GLXIIC_SMB_CTRL1_START_BIT ; 
 int GLXIIC_SMB_STS_BER_BIT ; 
 int GLXIIC_SMB_STS_MASTER_BIT ; 
 int GLXIIC_SMB_STS_NEGACK_BIT ; 
 int /*<<< orphan*/  GLXIIC_STATE_IDLE ; 
 int /*<<< orphan*/  GLXIIC_STATE_MASTER_ADDR ; 
 int /*<<< orphan*/  FUNC2 (struct glxiic_softc*) ; 
 int IIC_EBUSERR ; 
 int IIC_ENOACK ; 
 int IIC_ESTATUS ; 
 int IIC_M_NOSTOP ; 
 int IIC_NOERR ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct glxiic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct glxiic_softc*) ; 

__attribute__((used)) static int
FUNC7(struct glxiic_softc *sc, uint8_t status)
{
	uint8_t ctrl1;

	FUNC0(sc);

	if ((status & GLXIIC_SMB_STS_BER_BIT) != 0) {
		FUNC1("bus error in master stop");
		return (IIC_EBUSERR);
	}

	if ((status & GLXIIC_SMB_STS_MASTER_BIT) == 0) {
		FUNC1("not bus master in master stop");
		return (IIC_ESTATUS);
	}

	if ((status & GLXIIC_SMB_STS_NEGACK_BIT) != 0) {
		FUNC1("slave nack in master stop");
		return (IIC_ENOACK);
	}

	if (--sc->nmsgs > 0) {
		/* Start transfer of next message. */
		if ((sc->msg->flags & IIC_M_NOSTOP) == 0) {
			FUNC6(sc);
		}

		ctrl1 = FUNC3(sc->smb_res, GLXIIC_SMB_CTRL1);
		FUNC4(sc->smb_res, GLXIIC_SMB_CTRL1,
		    ctrl1 | GLXIIC_SMB_CTRL1_START_BIT);

		FUNC5(sc, GLXIIC_STATE_MASTER_ADDR);
		sc->msg++;
	} else {
		/* Last message. */
		FUNC6(sc);
		FUNC5(sc, GLXIIC_STATE_IDLE);
		sc->error = IIC_NOERR;
		FUNC2(sc);
	}

	return (IIC_NOERR);
}