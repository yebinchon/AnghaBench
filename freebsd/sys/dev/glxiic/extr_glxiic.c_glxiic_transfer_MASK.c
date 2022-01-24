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
typedef  int /*<<< orphan*/  uint32_t ;
struct iic_msg {int dummy; } ;
struct glxiic_softc {scalar_t__ state; int error; int /*<<< orphan*/  smb_res; int /*<<< orphan*/  nmsgs; struct iic_msg* msg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  GLXIIC_SMB_CTRL1 ; 
 int GLXIIC_SMB_CTRL1_START_BIT ; 
 scalar_t__ GLXIIC_STATE_IDLE ; 
 int /*<<< orphan*/  GLXIIC_STATE_MASTER_ADDR ; 
 int /*<<< orphan*/  FUNC2 (struct glxiic_softc*) ; 
 int IIC_EBUSBSY ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct glxiic_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct glxiic_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
	struct glxiic_softc *sc;
	int error;
	uint8_t ctrl1;

	sc = FUNC5(dev);

	FUNC0(sc);

	if (sc->state != GLXIIC_STATE_IDLE) {
		error = IIC_EBUSBSY;
		goto out;
	}

	sc->msg = msgs;
	sc->nmsgs = nmsgs;
	FUNC6(sc, GLXIIC_STATE_MASTER_ADDR);

	/* Set start bit and let glxiic_intr() handle the transfer. */
	ctrl1 = FUNC3(sc->smb_res, GLXIIC_SMB_CTRL1);
	FUNC4(sc->smb_res, GLXIIC_SMB_CTRL1,
	    ctrl1 | GLXIIC_SMB_CTRL1_START_BIT);

	FUNC1(sc);
	error = sc->error;
out:
	FUNC2(sc);

	return (error);
}