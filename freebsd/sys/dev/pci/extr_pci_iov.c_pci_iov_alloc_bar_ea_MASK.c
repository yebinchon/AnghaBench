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
struct resource_list_entry {struct resource* res; } ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct pcicfg_iov {int iov_num_vfs; int /*<<< orphan*/  rman; TYPE_2__* iov_bar; scalar_t__ iov_pos; } ;
struct TYPE_3__ {struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; struct resource_list resources; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
struct TYPE_4__ {int bar_size; int /*<<< orphan*/  bar_shift; struct resource* res; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct resource_list_entry* FUNC2 (struct resource_list*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 int FUNC4 (struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct pci_devinfo *dinfo, int bar)
{
	struct pcicfg_iov *iov;
	rman_res_t start, end;
	struct resource *res;
	struct resource_list *rl;
	struct resource_list_entry *rle;

	rl = &dinfo->resources;
	iov = dinfo->cfg.iov;

	rle = FUNC2(rl, SYS_RES_MEMORY,
	    iov->iov_pos + FUNC0(bar));
	if (rle == NULL)
		rle = FUNC2(rl, SYS_RES_IOPORT,
		    iov->iov_pos + FUNC0(bar));
	if (rle == NULL)
		return (ENXIO);
	res = rle->res;

	iov->iov_bar[bar].res = res;
	iov->iov_bar[bar].bar_size = FUNC4(res) / iov->iov_num_vfs;
	iov->iov_bar[bar].bar_shift = FUNC1(iov->iov_bar[bar].bar_size);

	start = FUNC5(res);
	end = FUNC3(res);

	return (FUNC6(&iov->rman, start, end));
}