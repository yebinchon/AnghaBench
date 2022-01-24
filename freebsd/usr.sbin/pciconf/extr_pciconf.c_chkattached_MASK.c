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
struct pci_io {scalar_t__ pi_data; int /*<<< orphan*/  pi_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PCIOCATTACHED ; 
 int /*<<< orphan*/  _PATH_DEVPCI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int exitstatus ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct pci_io*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char*,char*) ; 

__attribute__((used)) static void
FUNC6(const char *name)
{
	int fd;
	struct pci_io pi;

	pi.pi_sel = FUNC2(name);

	fd = FUNC4(_PATH_DEVPCI, O_RDWR, 0);
	if (fd < 0)
		FUNC1(1, "%s", _PATH_DEVPCI);

	if (FUNC3(fd, PCIOCATTACHED, &pi) < 0)
		FUNC1(1, "ioctl(PCIOCATTACHED)");

	exitstatus = pi.pi_data ? 0 : 2; /* exit(2), if NOT attached */
	FUNC5("%s: %s%s\n", name, pi.pi_data == 0 ? "not " : "", "attached");
	FUNC0(fd);
}