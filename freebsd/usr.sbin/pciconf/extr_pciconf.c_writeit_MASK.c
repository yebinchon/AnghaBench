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
struct pci_io {int pi_width; void* pi_data; void* pi_reg; int /*<<< orphan*/  pi_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PCIOCWRITE ; 
 int /*<<< orphan*/  _PATH_DEVPCI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct pci_io*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(const char *name, const char *reg, const char *data, int width)
{
	int fd;
	struct pci_io pi;

	pi.pi_sel = FUNC2(name);
	pi.pi_reg = FUNC5(reg, (char **)0, 0); /* XXX error check */
	pi.pi_width = width;
	pi.pi_data = FUNC5(data, (char **)0, 0); /* XXX error check */

	fd = FUNC4(_PATH_DEVPCI, O_RDWR, 0);
	if (fd < 0)
		FUNC1(1, "%s", _PATH_DEVPCI);

	if (FUNC3(fd, PCIOCWRITE, &pi) < 0)
		FUNC1(1, "ioctl(PCIOCWRITE)");
	FUNC0(fd);
}