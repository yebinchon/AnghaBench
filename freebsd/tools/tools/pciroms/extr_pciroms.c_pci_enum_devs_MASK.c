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
typedef  int /*<<< orphan*/  uint16_t ;
struct pci_conf_io {int match_buf_len; scalar_t__ status; size_t num_matches; struct pci_conf* matches; } ;
struct TYPE_2__ {int pc_domain; int pc_bus; int pc_dev; int pc_func; } ;
struct pci_conf {int pc_hdr; int pc_device; int pc_vendor; TYPE_1__ pc_sel; } ;
typedef  int /*<<< orphan*/  pc ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  devs ;
typedef  int action_t ;

/* Variables and functions */
 int MAX_PCI_DEVS ; 
 int /*<<< orphan*/  PCIOCGETCONF ; 
 scalar_t__ PCI_GETCONF_ERROR ; 
 scalar_t__ PCI_GETCONF_MORE_DEVS ; 
#define  PRINT 129 
#define  SAVE 128 
 int /*<<< orphan*/  FUNC0 (struct pci_conf_io*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct pci_conf_io*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct pci_conf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,struct pci_conf*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int) ; 
 int FUNC6 (int,struct pci_conf*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC10(int pci_fd, action_t action)
{
	struct pci_conf		 devs[MAX_PCI_DEVS];
	char			 filename[16];
	struct pci_conf_io	 pc;
	struct pci_conf		*p;
	int			 result;
	int			 romsize;
	uint16_t		 oldcmd;

	result = -1;
	romsize = 0;

	FUNC0(&pc, sizeof(pc));
	pc.match_buf_len = sizeof(devs);
	pc.matches = devs;

	if (FUNC2(pci_fd, PCIOCGETCONF, &pc) == -1) {
		FUNC7("ioctl PCIOCGETCONF");
		return;
	}

	if (pc.status == PCI_GETCONF_ERROR) {
		FUNC1(stderr,
		    "Error fetching PCI device list from kernel.\r\n");
		return;
	}

	if (pc.status == PCI_GETCONF_MORE_DEVS) {
		FUNC1(stderr,
"More than %d devices exist. Only the first %d will be inspected.\r\n",
		    MAX_PCI_DEVS, MAX_PCI_DEVS);
	}

	for (p = devs ; p < &devs[pc.num_matches]; p++) {

		/* No PCI bridges; only PCI devices. */
		if (p->pc_hdr != 0x00)
			continue;

		romsize = FUNC6(pci_fd, p);

		switch (action) {
		case PRINT:
			FUNC8(
"Domain %04Xh Bus %02Xh Device %02Xh Function %02Xh: ",
				p->pc_sel.pc_domain, p->pc_sel.pc_bus,
				p->pc_sel.pc_dev, p->pc_sel.pc_func);
			FUNC8((romsize ? "%dKB ROM aperture detected."
					: "No ROM present."), romsize/1024);
			FUNC8("\r\n");
			break;
		case SAVE:
			if (romsize == 0)
				continue;	/* XXX */

			FUNC9(filename, sizeof(filename), "%08X.rom",
			    ((p->pc_device << 16) | p->pc_vendor));

			FUNC1(stderr, "Saving %dKB ROM image to %s...\r\n",
			    romsize, filename);

			if (FUNC4(pci_fd, p, &oldcmd) == 0)
				result = FUNC5(filename, romsize);

			FUNC3(pci_fd, p, &oldcmd);

			if (result == 0)  {
				FUNC1(stderr, "Done.\r\n");
			} else  {
				FUNC1(stderr,
"An error occurred whilst saving the ROM.\r\n");
			}
			break;
		} /* switch */
	} /* for */
}