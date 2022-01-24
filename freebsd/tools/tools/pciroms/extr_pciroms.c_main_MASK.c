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
typedef  scalar_t__ uintmax_t ;
typedef  int /*<<< orphan*/  action_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  O_RDWR ; 
 uintptr_t PCI_ROM_RESERVED_MASK ; 
 int /*<<< orphan*/  PRINT ; 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  _PATH_DEVPCI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 uintptr_t base_addr ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int,char**,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int
FUNC11(int argc, char *argv[])
{
	int		 pci_fd;
	int		 err;
	int		 ch;
	action_t	 action;
	char		*base_addr_string;
	char		*ep;

	err = -1;
	pci_fd = -1;
	action = PRINT;
	base_addr_string = NULL;
	ep = NULL;
	progname = FUNC1(argv[0]);

	while ((ch = FUNC5(argc, argv, "sb:h")) != -1)
		switch (ch) {
		case 's':
			action = SAVE;
			break;
		case 'b':
			base_addr_string = optarg;
			break;
		case 'h':
		default:
		     FUNC10();
	}
	argc -= optind;
	argv += optind;

	if (base_addr_string != NULL) {
		uintmax_t base_addr_max;

		base_addr_max = FUNC9(base_addr_string, &ep, 16);
		if (*ep != '\0') {
			FUNC4(stderr, "Invalid base address.\r\n");
			FUNC10();
		}
		/* XXX: TODO: deal with 64-bit PCI. */
		base_addr = (uintptr_t)base_addr_max;
		base_addr &= ~PCI_ROM_RESERVED_MASK;
	}

	if (argc > 0)
		FUNC10();

	if ((pci_fd = FUNC6(_PATH_DEVPCI, O_RDWR)) == -1) {
		FUNC8("open");
		goto cleanup;
	}

	FUNC0();
	FUNC7(pci_fd, action);

	err = 0;
cleanup:
	if (pci_fd != -1)
		FUNC2(pci_fd);

	FUNC3 ((err == 0) ? EXIT_SUCCESS : EXIT_FAILURE);
}