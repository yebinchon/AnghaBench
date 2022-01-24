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
struct resource {int dummy; } ;
struct bhndb_pci_softc {struct bhndb_intr_isrc* isrc; } ;
struct bhndb_intr_isrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct bhndb_pci_softc* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(device_t dev, struct resource *irq,
    struct bhndb_intr_isrc **isrc)
{
	struct bhndb_pci_softc *sc = FUNC0(dev);

	/* There's only one bridged interrupt to choose from */
	*isrc = sc->isrc;
	return (0);
}