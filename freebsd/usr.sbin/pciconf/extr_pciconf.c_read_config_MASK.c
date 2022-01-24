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
typedef  int /*<<< orphan*/  uint32_t ;
struct pcisel {int dummy; } ;
struct pci_io {long pi_reg; int pi_width; int /*<<< orphan*/  pi_data; struct pcisel pi_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIOCREAD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct pci_io*) ; 

uint32_t
FUNC2(int fd, struct pcisel *sel, long reg, int width)
{
	struct pci_io pi;

	pi.pi_sel = *sel;
	pi.pi_reg = reg;
	pi.pi_width = width;

	if (FUNC1(fd, PCIOCREAD, &pi) < 0)
		FUNC0(1, "ioctl(PCIOCREAD)");

	return (pi.pi_data);
}