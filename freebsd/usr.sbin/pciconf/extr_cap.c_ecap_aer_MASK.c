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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct pci_conf {int /*<<< orphan*/  pc_sel; } ;

/* Variables and functions */
 scalar_t__ PCIR_AER_COR_STATUS ; 
 scalar_t__ PCIR_AER_UC_SEVERITY ; 
 scalar_t__ PCIR_AER_UC_STATUS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3(int fd, struct pci_conf *p, uint16_t ptr, uint8_t ver)
{
	uint32_t sta, mask;

	FUNC1("AER %d", ver);
	if (ver < 1)
		return;
	sta = FUNC2(fd, &p->pc_sel, ptr + PCIR_AER_UC_STATUS, 4);
	mask = FUNC2(fd, &p->pc_sel, ptr + PCIR_AER_UC_SEVERITY, 4);
	FUNC1(" %d fatal", FUNC0(sta & mask));
	FUNC1(" %d non-fatal", FUNC0(sta & ~mask));
	sta = FUNC2(fd, &p->pc_sel, ptr + PCIR_AER_COR_STATUS, 4);
	FUNC1(" %d corrected\n", FUNC0(sta));
}