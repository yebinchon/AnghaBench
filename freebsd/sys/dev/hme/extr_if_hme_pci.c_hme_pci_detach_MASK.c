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
struct hme_softc {int /*<<< orphan*/  sc_lock; } ;
struct hme_pci_softc {int /*<<< orphan*/  hsc_sres; int /*<<< orphan*/  hsc_ires; int /*<<< orphan*/  hsc_ih; struct hme_softc hsc_hme; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hme_pci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hme_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct hme_pci_softc *hsc;
	struct hme_softc *sc;

	hsc = FUNC2(dev);
	sc = &hsc->hsc_hme;
	FUNC1(dev, hsc->hsc_ires, hsc->hsc_ih);
	FUNC3(sc);
	FUNC0(dev, SYS_RES_IRQ,
	    FUNC5(hsc->hsc_ires), hsc->hsc_ires);
	FUNC0(dev, SYS_RES_MEMORY,
	    FUNC5(hsc->hsc_sres), hsc->hsc_sres);
	FUNC4(&sc->sc_lock);
	return (0);
}