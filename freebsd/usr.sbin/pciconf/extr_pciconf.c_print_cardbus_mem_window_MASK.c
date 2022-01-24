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
struct pci_conf {int /*<<< orphan*/  pc_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC4(int fd, struct pci_conf *p, int basereg, int limitreg,
    bool prefetch)
{

	FUNC2(basereg, prefetch ? "Prefetchable Memory" : "Memory", 32,
	    FUNC0(FUNC3(fd, &p->pc_sel, basereg, 4)),
	    FUNC1(FUNC3(fd, &p->pc_sel, limitreg, 4)));
}