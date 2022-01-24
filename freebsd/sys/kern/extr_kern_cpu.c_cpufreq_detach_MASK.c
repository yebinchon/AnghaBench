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
struct cpufreq_softc {struct cf_saved_freq* levels_buf; int /*<<< orphan*/  saved_freq; int /*<<< orphan*/  sysctl_ctx; } ;
struct cf_saved_freq {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_TEMP ; 
 struct cf_saved_freq* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpufreq_dc ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct cpufreq_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cf_saved_freq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct cpufreq_softc *sc;
	struct cf_saved_freq *saved_freq;
	int numdevs;

	FUNC0("shutdown %s\n", FUNC4(dev));
	sc = FUNC5(dev);
	FUNC7(&sc->sysctl_ctx);

	while ((saved_freq = FUNC1(&sc->saved_freq)) != NULL) {
		FUNC2(&sc->saved_freq, link);
		FUNC6(saved_freq, M_TEMP);
	}

	/* Only clean up these resources when the last device is detaching. */
	numdevs = FUNC3(cpufreq_dc);
	if (numdevs == 1) {
		FUNC0("final shutdown for %s\n", FUNC4(dev));
		FUNC6(sc->levels_buf, M_DEVBUF);
	}

	return (0);
}