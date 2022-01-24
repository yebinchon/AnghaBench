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
struct vtnet_softc {int /*<<< orphan*/  vtnet_ifp; int /*<<< orphan*/  vtnet_tick_ch; int /*<<< orphan*/  vtnet_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTR_TYPE_NET ; 
 int /*<<< orphan*/  FUNC0 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vtnet_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct vtnet_softc*) ; 
 int FUNC9 (struct vtnet_softc*) ; 
 int FUNC10 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vtnet_feature_desc ; 
 int /*<<< orphan*/  FUNC12 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct vtnet_softc*) ; 
 int FUNC14 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct vtnet_softc*) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct vtnet_softc *sc;
	int error;

	sc = FUNC3(dev);
	sc->vtnet_dev = dev;

	/* Register our feature descriptions. */
	FUNC6(dev, vtnet_feature_desc);

	FUNC0(sc);
	FUNC2(&sc->vtnet_tick_ch, FUNC1(sc), 0);

	FUNC15(sc);
	FUNC13(sc);

	error = FUNC8(sc);
	if (error) {
		FUNC4(dev, "cannot allocate Rx filters\n");
		goto fail;
	}

	error = FUNC9(sc);
	if (error) {
		FUNC4(dev, "cannot allocate queues\n");
		goto fail;
	}

	error = FUNC10(sc);
	if (error) {
		FUNC4(dev, "cannot allocate virtqueues\n");
		goto fail;
	}

	error = FUNC14(sc);
	if (error) {
		FUNC4(dev, "cannot setup interface\n");
		goto fail;
	}

	error = FUNC7(dev, INTR_TYPE_NET);
	if (error) {
		FUNC4(dev, "cannot setup virtqueue interrupts\n");
		/* BMV: This will crash if during boot! */
		FUNC5(sc->vtnet_ifp);
		goto fail;
	}

#ifdef DEV_NETMAP
	vtnet_netmap_attach(sc);
#endif /* DEV_NETMAP */

	FUNC16(sc);

fail:
	if (error)
		FUNC11(dev);

	return (error);
}