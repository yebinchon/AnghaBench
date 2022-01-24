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
typedef  int /*<<< orphan*/  uint32_t ;
struct pmufreq_softc {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  min_freq ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pmufreq_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct pmufreq_softc *sc;
	phandle_t node;
	uint32_t min_freq;

	if (FUNC5("pmufreq", 0))
		return (ENXIO);

	sc = FUNC2(dev);
	node = FUNC4(FUNC1(dev));
	/*
	 * A scalable MPC7455 has min-clock-frequency/max-clock-frequency as OFW
	 * properties of the 'cpu' node.
	 */
	if (FUNC0(node, "min-clock-frequency", &min_freq, sizeof(min_freq)) == -1)
		return (ENXIO);
	FUNC3(dev, "PMU-based frequency scaling");
	return (0);
}