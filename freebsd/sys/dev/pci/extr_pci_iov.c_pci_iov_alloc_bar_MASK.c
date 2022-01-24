#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct pcicfg_iov {int iov_pos; int /*<<< orphan*/  rman; TYPE_2__* iov_bar; int /*<<< orphan*/  iov_num_vfs; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int pci_addr_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int bar_size; int bar_shift; struct resource* res; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct pci_devinfo *dinfo, int bar, pci_addr_t bar_shift)
{
	struct resource *res;
	struct pcicfg_iov *iov;
	device_t dev, bus;
	rman_res_t start, end;
	pci_addr_t bar_size;
	int rid;

	iov = dinfo->cfg.iov;
	dev = dinfo->cfg.dev;
	bus = FUNC1(dev);
	rid = iov->iov_pos + FUNC0(bar);
	bar_size = 1 << bar_shift;

	res = FUNC2(bus, dev, SYS_RES_MEMORY, &rid, 0,
	    ~0, 1, iov->iov_num_vfs, RF_ACTIVE);

	if (res == NULL)
		return (ENXIO);

	iov->iov_bar[bar].res = res;
	iov->iov_bar[bar].bar_size = bar_size;
	iov->iov_bar[bar].bar_shift = bar_shift;

	start = FUNC4(res);
	end = FUNC3(res);
	return (FUNC5(&iov->rman, start, end));
}