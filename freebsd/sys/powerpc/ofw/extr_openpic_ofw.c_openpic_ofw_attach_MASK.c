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
typedef  int /*<<< orphan*/  xref ;
struct openpic_softc {int /*<<< orphan*/  sc_quirks; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  OPENPIC_QUIRK_HIDDEN_IRQS ; 
 int /*<<< orphan*/  OPENPIC_QUIRK_SINGLE_BIND ; 
 struct openpic_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct openpic_softc *sc;
	phandle_t xref, node;

	node = FUNC2(dev);
	sc = FUNC1(dev);

	if (FUNC0(node, "phandle", &xref, sizeof(xref)) == -1 &&
	    FUNC0(node, "ibm,phandle", &xref, sizeof(xref)) == -1 &&
	    FUNC0(node, "linux,phandle", &xref, sizeof(xref)) == -1)
		xref = node;
	
	if (FUNC3(dev, "fsl,mpic")) {
		sc->sc_quirks = OPENPIC_QUIRK_SINGLE_BIND;
		sc->sc_quirks |= OPENPIC_QUIRK_HIDDEN_IRQS;
	}

	return (FUNC4(dev, xref));
}