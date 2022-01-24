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
struct dwc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_CONTROL ; 
 int /*<<< orphan*/  MMC_CONTROL_CNTRST ; 
 int /*<<< orphan*/  FUNC0 (struct dwc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dwc_softc *sc)
{
	uint32_t reg;

	reg = FUNC0(sc, MMC_CONTROL);
	reg |= (MMC_CONTROL_CNTRST);
	FUNC1(sc, MMC_CONTROL, reg);
}