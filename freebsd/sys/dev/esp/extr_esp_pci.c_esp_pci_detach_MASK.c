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
struct ncr53c9x_softc {int dummy; } ;
struct esp_pci_softc {int /*<<< orphan*/ * sc_res; int /*<<< orphan*/  sc_pdmat; int /*<<< orphan*/  sc_xferdmat; int /*<<< orphan*/  sc_xferdmam; int /*<<< orphan*/  sc_ih; int /*<<< orphan*/  sc_dev; struct ncr53c9x_softc sc_ncr53c9x; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 size_t ESP_PCI_RES_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct ncr53c9x_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct esp_pci_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  esp_pci_res_spec ; 
 int FUNC6 (struct ncr53c9x_softc*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct ncr53c9x_softc *sc;
	struct esp_pci_softc *esc;
	int error;

	esc = FUNC5(dev);
	sc = &esc->sc_ncr53c9x;

	FUNC4(esc->sc_dev, esc->sc_res[ESP_PCI_RES_INTR],
	    esc->sc_ih);
	error = FUNC6(sc);
	if (error != 0)
		return (error);
	FUNC2(esc->sc_xferdmat, esc->sc_xferdmam);
	FUNC1(esc->sc_xferdmat);
	FUNC1(esc->sc_pdmat);
	FUNC3(dev, esp_pci_res_spec, esc->sc_res);
	FUNC0(sc);

	return (0);
}