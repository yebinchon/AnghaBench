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
struct pmu_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pmu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pmu_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vACR ; 
 int vSR_OUT ; 

__attribute__((used)) static void
FUNC2(struct pmu_softc *sc)
{
	uint8_t reg;

	reg = FUNC0(sc, vACR);
	reg |= vSR_OUT;
	reg |= 0x0c;
	FUNC1(sc, vACR, reg);
}