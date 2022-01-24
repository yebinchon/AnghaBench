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
struct ata_pci_controller {int (* setmode ) (int /*<<< orphan*/ ,int,int) ;} ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int target, int mode)
{
	struct ata_pci_controller *ctlr = FUNC2(FUNC1(dev));

	if (ctlr->setmode)
		return (ctlr->setmode(dev, target, mode));
	else
		return (FUNC0(dev, target, mode));
}