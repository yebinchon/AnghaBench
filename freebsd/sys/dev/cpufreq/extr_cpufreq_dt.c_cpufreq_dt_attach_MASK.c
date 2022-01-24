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
typedef  int /*<<< orphan*/  uint64_t ;
struct cpufreq_dt_softc {int /*<<< orphan*/  clk; int /*<<< orphan*/  cpus; int /*<<< orphan*/  reg; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  opp ;
typedef  enum opp_version { ____Placeholder_opp_version } opp_version ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  copp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,scalar_t__*,int) ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int OPP_V1 ; 
 int OPP_V2 ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct cpufreq_dt_softc*,scalar_t__) ; 
 int FUNC9 (struct cpufreq_dt_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct cpufreq_dt_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct cpufreq_dt_softc *sc;
	phandle_t node;
	phandle_t cnode, opp, copp;
	int cpu;
	uint64_t freq;
	int rv = 0;
	enum opp_version version;

	sc = FUNC12(dev);
	sc->dev = dev;
	node = FUNC16(FUNC11(dev));

	if (FUNC17(dev, node,
	    "cpu-supply", &sc->reg) != 0) {
		if (FUNC17(dev, node,
		    "cpu0-supply", &sc->reg) != 0) {
			FUNC14(dev, "no regulator for %s\n",
			    FUNC15(FUNC11(dev)));
			return (ENXIO);
		}
	}

	if (FUNC5(dev, node, 0, &sc->clk) != 0) {
		FUNC14(dev, "no clock for %s\n",
		    FUNC15(FUNC11(dev)));
		FUNC18(sc->reg);
		return (ENXIO);
	}

	if (FUNC3(node, "operating-points")) {
		version = OPP_V1;
		rv = FUNC8(sc, node);
		if (rv != 0) {
			FUNC14(dev, "Failed to parse opp-v1 table\n");
			return (rv);
		}
		FUNC2(node, "operating-points", &opp,
		    sizeof(opp));
	} else {
		version = OPP_V2;
		rv = FUNC9(sc, node);
		if (rv != 0) {
			FUNC14(dev, "Failed to parse opp-v2 table\n");
			return (rv);
		}
		FUNC2(node, "operating-points-v2", &opp,
		    sizeof(opp));
	}

	/*
	 * Find all CPUs that share the same opp table
	 */
	FUNC1(&sc->cpus);
	cpu = FUNC13(FUNC11(dev));
	for (cnode = node; cnode > 0; cnode = FUNC4(cnode), cpu++) {
		copp = -1;
		if (version == OPP_V1)
			FUNC2(cnode, "operating-points", &copp,
			    sizeof(copp));
		else if (version == OPP_V2)
			FUNC2(cnode, "operating-points-v2",
			    &copp, sizeof(copp));
		if (opp == copp)
			FUNC0(cpu, &sc->cpus);
	}

	if (FUNC6(sc->clk, &freq) == 0)
		FUNC7(dev, freq);

	FUNC10(dev);

	return (0);
}