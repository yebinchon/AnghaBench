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
typedef  int /*<<< orphan*/  vm_memattr_t ;
struct ntb_softc {struct ntb_pci_bar_info* bar_info; } ;
struct ntb_pci_bar_info {int /*<<< orphan*/  map_mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 struct ntb_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct ntb_softc*,unsigned int) ; 
 unsigned int FUNC3 (struct ntb_softc*,unsigned int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, unsigned idx, vm_memattr_t *mode)
{
	struct ntb_softc *ntb = FUNC0(dev);
	struct ntb_pci_bar_info *bar;

	if (idx >= FUNC1(dev))
		return (EINVAL);
	idx = FUNC3(ntb, idx);

	bar = &ntb->bar_info[FUNC2(ntb, idx)];
	*mode = bar->map_mode;
	return (0);
}