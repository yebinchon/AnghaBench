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
struct pmufreq_softc {int minfreq; int maxfreq; int curfreq; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct pmufreq_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct pmufreq_softc *sc;
	phandle_t node;

	sc = FUNC3(dev);
	sc->dev = dev;

	node = FUNC4(FUNC2(dev));
	FUNC0(node, "min-clock-frequency", &sc->minfreq, sizeof(sc->minfreq));
	FUNC0(node, "max-clock-frequency", &sc->maxfreq, sizeof(sc->maxfreq));
	FUNC0(node, "rounded-clock-frequency", &sc->curfreq, sizeof(sc->curfreq));
	sc->minfreq /= 1000000;
	sc->maxfreq /= 1000000;
	sc->curfreq /= 1000000;

	FUNC1(dev);
	return (0);
}