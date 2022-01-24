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
typedef  int uint8_t ;
struct bhnd_pmu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_pmu_softc*,int,int,int /*<<< orphan*/ ) ; 

void
FUNC1(struct bhnd_pmu_softc *sc, uint8_t bb_voltage,
    uint8_t rf_voltage)
{
	FUNC0(sc, 0x01, (bb_voltage & 0x1f) << 22, ~0);
	FUNC0(sc, 0x00, (rf_voltage & 0x1f) << 14, ~0);
}