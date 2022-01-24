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
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  pqi_dev; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;
struct cdev {struct pqisrc_softstate* si_drv1; } ;
struct TYPE_4__ {int board_id; int chip_id; int /*<<< orphan*/  domain; int /*<<< orphan*/  dev_fn; int /*<<< orphan*/  bus; } ;
typedef  TYPE_2__ pqi_pci_info_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  PCIR_SUBDEV_0 ; 
 int /*<<< orphan*/  PCIR_SUBVEND_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(caddr_t udata, struct cdev *cdev)
{
	struct pqisrc_softstate *softs = cdev->si_drv1;
	device_t dev = softs->os_specific.pqi_dev;
	pqi_pci_info_t *pci_info = (pqi_pci_info_t *)udata;
	uint32_t sub_vendor = 0;
	uint32_t sub_device = 0;
	uint32_t vendor = 0;
	uint32_t device = 0;

	FUNC0("IN udata = %p cdev = %p\n", udata, cdev);

	pci_info->bus = FUNC1(dev);
	pci_info->dev_fn = FUNC4(dev);
	pci_info->domain = FUNC3(dev);
	sub_vendor = FUNC6(dev, PCIR_SUBVEND_0, 2);
	sub_device = FUNC6(dev, PCIR_SUBDEV_0, 2);
	pci_info->board_id = ((sub_device << 16) & 0xffff0000) | sub_vendor;
	vendor = FUNC5(dev);
	device =  FUNC2(dev);
	pci_info->chip_id = ((device << 16) & 0xffff0000) | vendor;
	FUNC0("OUT\n");
}