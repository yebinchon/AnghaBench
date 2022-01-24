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
struct bwn_pci_softc {int /*<<< orphan*/  bhndb_dev; int /*<<< orphan*/  quirks; int /*<<< orphan*/  devcfg; int /*<<< orphan*/  dev; } ;
struct bwn_pci_device {int /*<<< orphan*/  quirks; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct bwn_pci_device const**) ; 
 struct bwn_pci_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct bwn_pci_softc		*sc;
	const struct bwn_pci_device	*ident;
	int				 error;

	sc = FUNC2(dev);
	sc->dev = dev;

	/* Find our hardware config */
	if (FUNC1(dev, &sc->devcfg, &ident))
		return (ENXIO);

	/* Save quirk flags */
	sc->quirks = ident->quirks;

	/* Attach bridge device */
	if ((error = FUNC0(dev, &sc->bhndb_dev, -1)))
		return (ENXIO);

	/* Success */
	return (0);
}