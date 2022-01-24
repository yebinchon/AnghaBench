#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ral_pci_softc {TYPE_1__* sc_opns; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* shutdown ) (struct ral_pci_softc*) ;} ;

/* Variables and functions */
 struct ral_pci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ral_pci_softc*) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct ral_pci_softc *psc = FUNC0(dev);

	(*psc->sc_opns->shutdown)(psc);

	return 0;
}