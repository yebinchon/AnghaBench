#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  func; int /*<<< orphan*/  slot; int /*<<< orphan*/  bus; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef  TYPE_1__ pcicfgregs ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pci_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(device_t dev, device_t child, int reg, uint32_t val,
    int width)
{
	struct pci_devinfo *dinfo = FUNC0(child);
	pcicfgregs *cfg = &dinfo->cfg;

	FUNC1(dev, cfg->bus, cfg->slot, cfg->func, reg, val, width);
}