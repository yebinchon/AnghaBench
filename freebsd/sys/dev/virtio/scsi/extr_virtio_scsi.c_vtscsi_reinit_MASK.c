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
struct vtscsi_softc {int /*<<< orphan*/  vtscsi_features; int /*<<< orphan*/  vtscsi_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  VTSCSI_TRACE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vtscsi_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtscsi_softc*) ; 

__attribute__((used)) static int
FUNC6(struct vtscsi_softc *sc)
{
	device_t dev;
	int error;

	dev = sc->vtscsi_dev;

	error = FUNC0(dev, sc->vtscsi_features);
	if (error == 0) {
		FUNC5(sc);
		FUNC4(sc);
		FUNC1(dev);

		FUNC3(sc);
	}

	FUNC2(sc, VTSCSI_TRACE, "error=%d\n", error);

	return (error);
}