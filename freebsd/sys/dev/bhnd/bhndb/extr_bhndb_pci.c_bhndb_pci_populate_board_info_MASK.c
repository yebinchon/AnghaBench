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
struct bhndb_pci_softc {int /*<<< orphan*/  parent; } ;
struct bhnd_board_info {scalar_t__ board_vendor; int /*<<< orphan*/  board_devid; int /*<<< orphan*/  board_type; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  BHND_BOARD_BCM94360X29C 131 
#define  BHND_BOARD_BCM94360X29CP2 130 
#define  BHND_BOARD_BCM94360X51 129 
#define  BHND_BOARD_BCM94360X51P2 128 
 scalar_t__ PCI_VENDOR_APPLE ; 
 struct bhndb_pci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child,
    struct bhnd_board_info *info)
{
	struct bhndb_pci_softc	*sc;

	sc = FUNC0(dev);

	/* 
	 * On a subset of Apple BCM4360 modules, always prefer the
	 * PCI subdevice to the SPROM-supplied boardtype.
	 * 
	 * TODO:
	 * 
	 * Broadcom's own drivers implement this override, and then later use
	 * the remapped BCM4360 board type to determine the required
	 * board-specific workarounds.
	 * 
	 * Without access to this hardware, it's unclear why this mapping
	 * is done, and we must do the same. If we can survey the hardware
	 * in question, it may be possible to replace this behavior with
	 * explicit references to the SPROM-supplied boardtype(s) in our
	 * quirk definitions.
	 */
	if (FUNC3(sc->parent) == PCI_VENDOR_APPLE) {
		switch (info->board_type) {
		case BHND_BOARD_BCM94360X29C:
		case BHND_BOARD_BCM94360X29CP2:
		case BHND_BOARD_BCM94360X51:
		case BHND_BOARD_BCM94360X51P2:
			info->board_type = 0;	/* allow override below */
			break;
		default:
			break;
		}
	}

	/* If NVRAM did not supply vendor/type/devid info, provide the PCI
	 * subvendor/subdevice/device values. */
	if (info->board_vendor == 0)
		info->board_vendor = FUNC3(sc->parent);

	if (info->board_type == 0)
		info->board_type = FUNC2(sc->parent);

	if (info->board_devid == 0)
		info->board_devid = FUNC1(sc->parent);

	return (0);
}