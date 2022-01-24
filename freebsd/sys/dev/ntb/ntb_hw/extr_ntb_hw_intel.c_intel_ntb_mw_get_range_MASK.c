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
typedef  scalar_t__ vm_paddr_t ;
struct ntb_softc {unsigned int b2b_mw_idx; size_t b2b_off; struct ntb_pci_bar_info* bar_info; } ;
struct ntb_pci_bar_info {size_t size; scalar_t__ vbase; scalar_t__ pbase; } ;
typedef  enum ntb_bar { ____Placeholder_ntb_bar } ntb_bar ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct ntb_softc*,int) ; 
 struct ntb_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ntb_softc*,unsigned int) ; 
 unsigned int FUNC5 (struct ntb_softc*,unsigned int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, unsigned mw_idx, vm_paddr_t *base,
    caddr_t *vbase, size_t *size, size_t *align, size_t *align_size,
    bus_addr_t *plimit)
{
	struct ntb_softc *ntb = FUNC2(dev);
	struct ntb_pci_bar_info *bar;
	bus_addr_t limit;
	size_t bar_b2b_off;
	enum ntb_bar bar_num;

	if (mw_idx >= FUNC3(dev))
		return (EINVAL);
	mw_idx = FUNC5(ntb, mw_idx);

	bar_num = FUNC4(ntb, mw_idx);
	bar = &ntb->bar_info[bar_num];
	bar_b2b_off = 0;
	if (mw_idx == ntb->b2b_mw_idx) {
		FUNC0(ntb->b2b_off != 0,
		    ("user shouldn't get non-shared b2b mw"));
		bar_b2b_off = ntb->b2b_off;
	}

	if (FUNC1(ntb, bar_num))
		limit = BUS_SPACE_MAXADDR;
	else
		limit = BUS_SPACE_MAXADDR_32BIT;

	if (base != NULL)
		*base = bar->pbase + bar_b2b_off;
	if (vbase != NULL)
		*vbase = bar->vbase + bar_b2b_off;
	if (size != NULL)
		*size = bar->size - bar_b2b_off;
	if (align != NULL)
		*align = bar->size;
	if (align_size != NULL)
		*align_size = 1;
	if (plimit != NULL)
		*plimit = limit;
	return (0);
}