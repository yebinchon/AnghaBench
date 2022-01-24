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
struct ehci_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_UM_ES_BE ; 
 int /*<<< orphan*/  EHCI_USBMODE_NOLPM ; 
 int /*<<< orphan*/  FUNC0 (struct ehci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ehci_softc *ehci_softc)
{
	uint32_t usbmode;

	/* Select big-endian mode */
	usbmode = FUNC0(ehci_softc, EHCI_USBMODE_NOLPM);
	usbmode |= EHCI_UM_ES_BE;
	FUNC1(ehci_softc, EHCI_USBMODE_NOLPM, usbmode);
}