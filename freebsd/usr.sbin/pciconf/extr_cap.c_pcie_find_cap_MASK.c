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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct pci_conf {int /*<<< orphan*/  pc_sel; } ;

/* Variables and functions */
 scalar_t__ PCIR_EXTCAP ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,scalar_t__,int) ; 

uint16_t
FUNC3(int fd, struct pci_conf *p, uint16_t id)
{
	uint32_t ecap;
	uint16_t ptr;

	ptr = PCIR_EXTCAP;
	ecap = FUNC2(fd, &p->pc_sel, ptr, 4);
	if (ecap == 0xffffffff || ecap == 0)
		return (0);
	for (;;) {
		if (FUNC0(ecap) == id)
			return (ptr);
		ptr = FUNC1(ecap);
		if (ptr == 0)
			break;
		ecap = FUNC2(fd, &p->pc_sel, ptr, 4);
	}
	return (0);
}