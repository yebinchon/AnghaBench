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
struct bhnd_pmu_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pmu_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_pmu_softc*) ; 
 struct bhnd_pmu_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev, uint32_t reg, uint32_t value,
    uint32_t mask)
{
	struct bhnd_pmu_softc *sc = FUNC3(dev);

	FUNC1(sc);
	FUNC0(sc, reg, value, mask);
	FUNC2(sc);
}