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
struct pci_conf {int /*<<< orphan*/  pc_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC2(int fd, struct pci_conf *p, int secreg, int subreg)
{
	uint8_t secbus, subbus;

	secbus = FUNC1(fd, &p->pc_sel, secreg, 1);
	subbus = FUNC1(fd, &p->pc_sel, subreg, 1);
	FUNC0("    bus range  = %u-%u\n", secbus, subbus);
}