#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct mbox_reorder   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct bge_softc {int /*<<< orphan*/  bge_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ devclass_t ;
struct mbox_reorder {scalar_t__ const vendor; scalar_t__ const device; char const* desc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (TYPE_1__ const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct bge_softc *sc)
{
	/* Lists of PCI bridges that are known to reorder mailbox writes. */
	static const struct mbox_reorder {
		const uint16_t vendor;
		const uint16_t device;
		const char *desc;
	} mbox_reorder_lists[] = {
		{ 0x1022, 0x7450, "AMD-8131 PCI-X Bridge" },
	};
	devclass_t pci, pcib;
	device_t bus, dev;
	int i;

	pci = FUNC0("pci");
	pcib = FUNC0("pcib");
	dev = sc->bge_dev;
	bus = FUNC2(dev);
	for (;;) {
		dev = FUNC2(bus);
		bus = FUNC2(dev);
		if (FUNC1(dev) != pcib)
			break;
		if (FUNC1(bus) != pci)
			break;
		for (i = 0; i < FUNC4(mbox_reorder_lists); i++) {
			if (FUNC6(dev) ==
			    mbox_reorder_lists[i].vendor &&
			    FUNC5(dev) ==
			    mbox_reorder_lists[i].device) {
				FUNC3(sc->bge_dev,
				    "enabling MBOX workaround for %s\n",
				    mbox_reorder_lists[i].desc);
				return (1);
			}
		}
	}
	return (0);
}