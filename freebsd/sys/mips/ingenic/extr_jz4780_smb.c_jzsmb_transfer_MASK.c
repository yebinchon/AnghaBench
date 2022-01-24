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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct jzsmb_softc {int busy; int /*<<< orphan*/ * msg; scalar_t__ status; int /*<<< orphan*/  mtx; } ;
struct iic_msg {scalar_t__ slave; int flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IIC_M_RD ; 
 int /*<<< orphan*/  SMBCON ; 
 int /*<<< orphan*/  SMBCON_STPHLD ; 
 int /*<<< orphan*/  FUNC0 (struct jzsmb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct jzsmb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jzsmb_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct jzsmb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jzsmb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct jzsmb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct iic_msg*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct iic_msg*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct jzsmb_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct jzsmb_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
	struct jzsmb_softc *sc;
	uint32_t n;
	uint16_t con;
	int error;

	sc = FUNC4(dev);

	FUNC0(sc);
	while (sc->busy)
		FUNC9(sc, &sc->mtx, 0, "i2cbuswait", 0);
	sc->busy = 1;
	sc->status = 0;

	for (n = 0; n < nmsgs; n++) {
		/* Set target address */
		if (n == 0 || msgs[n].slave != msgs[n - 1].slave)
			FUNC6(dev, msgs[n].slave);

		/* Set read or write */
		if ((msgs[n].flags & IIC_M_RD) != 0)
			error = FUNC7(dev, &msgs[n]);
		else
			error = FUNC8(dev, &msgs[n],
			    n < nmsgs - 1);

		if (error != 0)
			goto done;
	}

done:
	/* Send stop if necessary */
	con = FUNC1(sc, SMBCON);
	con &= ~SMBCON_STPHLD;
	FUNC3(sc, SMBCON, con);

	/* Disable SMB */
	FUNC5(sc, 0);

	sc->msg = NULL;
	sc->busy = 0;
	FUNC10(sc);
	FUNC2(sc);

	return (error);
}