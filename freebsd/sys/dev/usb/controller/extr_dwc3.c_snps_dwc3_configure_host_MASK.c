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
struct snps_dwc3_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_GCTL ; 
 int /*<<< orphan*/  DWC3_GCTL_PRTCAPDIR_HOST ; 
 int /*<<< orphan*/  DWC3_GCTL_PRTCAPDIR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snps_dwc3_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snps_dwc3_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct snps_dwc3_softc *sc)
{
	uint32_t reg;

	reg = FUNC0(sc, DWC3_GCTL);
	reg &= ~DWC3_GCTL_PRTCAPDIR_MASK;
	reg |= DWC3_GCTL_PRTCAPDIR_HOST;
	FUNC1(sc, DWC3_GCTL, reg);
}