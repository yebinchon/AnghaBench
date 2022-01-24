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
typedef  int /*<<< orphan*/  uint64_t ;
struct ntb_softc {struct ntb_pci_bar_info* bar_info; } ;
struct ntb_pci_bar_info {int /*<<< orphan*/  pbarxlat_off; } ;
typedef  enum ntb_bar { ____Placeholder_ntb_bar } ntb_bar ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ntb_softc*,int /*<<< orphan*/ ) ; 
 int NTB_B2B_BAR_2 ; 
 int /*<<< orphan*/  NTB_SPLIT_BAR ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ntb_softc *ntb, uint64_t base_addr, enum ntb_bar idx)
{
	struct ntb_pci_bar_info *bar;

	bar = &ntb->bar_info[idx];
	if (FUNC0(ntb, NTB_SPLIT_BAR) && idx >= NTB_B2B_BAR_2) {
		FUNC2(4, bar->pbarxlat_off, base_addr);
		base_addr = FUNC1(4, bar->pbarxlat_off);
	} else {
		FUNC2(8, bar->pbarxlat_off, base_addr);
		base_addr = FUNC1(8, bar->pbarxlat_off);
	}
	(void)base_addr;
}