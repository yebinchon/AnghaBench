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
struct bhnd_pmu_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bhnd_pmu_spuravoid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_pmu_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pmu_softc*) ; 
 int FUNC2 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ) ; 
 struct bhnd_pmu_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, bhnd_pmu_spuravoid spuravoid)
{
	struct bhnd_pmu_softc	*sc;
	int			 error;

	sc = FUNC3(dev);

	FUNC0(sc);
	error = FUNC2(sc, spuravoid);
	FUNC1(sc);

	return (error);
}