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
struct sfxge_softc {int /*<<< orphan*/  dev; struct ifnet* ifnet; int /*<<< orphan*/  enp; int /*<<< orphan*/  init_state; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  SFXGE_REGISTERED ; 
 struct sfxge_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int FUNC6 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int FUNC9 (struct ifnet*,struct sfxge_softc*) ; 
 int FUNC10 (struct sfxge_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct sfxge_softc *sc;
	struct ifnet *ifp;
	int error;

	sc = FUNC1(dev);
	sc->dev = dev;

	/* Allocate ifnet. */
	ifp = FUNC4(IFT_ETHER);
	if (ifp == NULL) {
		FUNC2(dev, "Couldn't allocate ifnet\n");
		error = ENOMEM;
		goto fail;
	}
	sc->ifnet = ifp;

	/* Initialize hardware. */
	FUNC0(sc->dev, "create nic");
	if ((error = FUNC6(sc)) != 0)
		goto fail2;

	/* Create the ifnet for the port. */
	FUNC0(sc->dev, "init ifnet");
	if ((error = FUNC9(ifp, sc)) != 0)
		goto fail3;

	FUNC0(sc->dev, "init vpd");
	if ((error = FUNC10(sc)) != 0)
		goto fail4;

	/*
	 * NIC is initialized inside sfxge_create() and kept inialized
	 * to be able to initialize port to discover media types in
	 * sfxge_ifnet_init().
	 */
	FUNC3(sc->enp);

	sc->init_state = SFXGE_REGISTERED;

	FUNC0(sc->dev, "success");
	return (0);

fail4:
	FUNC8(ifp);
fail3:
	FUNC3(sc->enp);
	FUNC7(sc);

fail2:
	FUNC5(sc->ifnet);

fail:
	FUNC0(sc->dev, "failed %d", error);
	return (error);
}