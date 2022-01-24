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
struct est_softc {int /*<<< orphan*/  flist_len; int /*<<< orphan*/  freq_list; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MSR_PERF_STATUS ; 
 char* cpu_vendor ; 
 struct est_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct est_softc *sc;
	uint64_t msr;
	int error;

	sc = FUNC0(dev);
	msr = FUNC5(MSR_PERF_STATUS);
	error = FUNC3(dev, msr, &sc->freq_list, &sc->flist_len);
	if (error)
		error = FUNC1(dev, &sc->freq_list, &sc->flist_len);
	if (error)
		error = FUNC2(dev, msr, &sc->freq_list, &sc->flist_len);

	if (error) {
		FUNC4(
	"est: CPU supports Enhanced Speedstep, but is not recognized.\n"
	"est: cpu_vendor %s, msr %0jx\n", cpu_vendor, msr);
		return (ENXIO);
	}

	return (0);
}