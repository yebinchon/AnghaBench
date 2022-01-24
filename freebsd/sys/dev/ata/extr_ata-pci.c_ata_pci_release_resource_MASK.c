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
struct resource {int dummy; } ;
struct ata_pci_controller {scalar_t__ legacy; } ;
struct ata_channel {int unit; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  ATA_CTLADDR_RID 129 
#define  ATA_IOADDR_RID 128 
 int ATA_IRQ_RID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 scalar_t__ ata_devclass ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(device_t dev, device_t child, int type, int rid,
			 struct resource *r)
{

	if (FUNC2(child) == ata_devclass) {
		struct ata_pci_controller *controller = FUNC4(dev);
		int unit = ((struct ata_channel *)FUNC4(child))->unit;

	        if (type == SYS_RES_IOPORT) {
	    		switch (rid) {
			case ATA_IOADDR_RID:
		    	    return FUNC0(FUNC3(dev), dev,
				SYS_RES_IOPORT,
				FUNC1(0) + (unit << 3), r);
			case ATA_CTLADDR_RID:
			    return FUNC0(FUNC3(dev), dev,
				SYS_RES_IOPORT,
				FUNC1(1) + (unit << 3), r);
			default:
			    return ENOENT;
			}
		}
		if (type == SYS_RES_IRQ) {
			if (rid != ATA_IRQ_RID)
				return ENOENT;
			if (controller->legacy) {
				return FUNC0(FUNC3(dev), child,
				    SYS_RES_IRQ, rid, r);
			} else  
				return 0;
		}
	} else {
		if (type == SYS_RES_IRQ) {
			if (rid != ATA_IRQ_RID)
				return (ENOENT);
			return (0);
		} else {
			return (FUNC0(FUNC3(dev), child,
			    type, rid, r));
		}
	}
	return (EINVAL);
}