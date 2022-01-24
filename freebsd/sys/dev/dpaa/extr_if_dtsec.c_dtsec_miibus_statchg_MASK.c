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
struct dtsec_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_mach; TYPE_1__* sc_mii; } ;
typedef  int /*<<< orphan*/  e_EnetSpeed ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int mii_media_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dtsec_softc*) ; 
 int E_OK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
#define  IFM_1000_SX 131 
#define  IFM_1000_T 130 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_FDX ; 
 int IFM_GMASK ; 
 int FUNC2 (int) ; 
 struct dtsec_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  e_ENET_SPEED_10 ; 
 int /*<<< orphan*/  e_ENET_SPEED_100 ; 
 int /*<<< orphan*/  e_ENET_SPEED_1000 ; 

void
FUNC5(device_t dev)
{
	struct dtsec_softc *sc;
	e_EnetSpeed speed;
	bool duplex;
	int error;

	sc = FUNC3(dev);

	FUNC0(sc);

	duplex = ((sc->sc_mii->mii_media_active & IFM_GMASK) == IFM_FDX);

	switch (FUNC2(sc->sc_mii->mii_media_active)) {
	case IFM_1000_T:
	case IFM_1000_SX:
		speed = e_ENET_SPEED_1000;
		break;

        case IFM_100_TX:
		speed = e_ENET_SPEED_100;
		break;

        case IFM_10_T:
		speed = e_ENET_SPEED_10;
		break;

	default:
		speed = e_ENET_SPEED_10;
	}

	error = FUNC1(sc->sc_mach, speed, duplex);
	if (error != E_OK)
		FUNC4(sc->sc_dev, "error while adjusting MAC speed.\n");
}