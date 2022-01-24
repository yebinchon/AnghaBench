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
typedef  int /*<<< orphan*/  u_int ;
struct resource {int dummy; } ;
struct ata_pci_controller {struct resource* r_irq; scalar_t__ legacy; } ;
struct ata_channel {int unit; } ;
typedef  int rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  ATA_CTLADDR_RID 129 
 int ATA_CTLIOSIZE ; 
 int ATA_CTLOFFSET ; 
#define  ATA_IOADDR_RID 128 
 int ATA_IOSIZE ; 
 int ATA_IRQ_RID ; 
 int ATA_PRIMARY ; 
 int ATA_SECONDARY ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 scalar_t__ ata_devclass ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC4 (int /*<<< orphan*/ ) ; 

struct resource *
FUNC5(device_t dev, device_t child, int type, int *rid,
		       rman_res_t start, rman_res_t end, rman_res_t count,
		       u_int flags)
{
	struct ata_pci_controller *controller = FUNC4(dev);
	struct resource *res = NULL;

	if (FUNC2(child) == ata_devclass) {
		int unit = ((struct ata_channel *)FUNC4(child))->unit;
		int myrid;

		if (type == SYS_RES_IOPORT) {
			switch (*rid) {
			case ATA_IOADDR_RID:
			    if (controller->legacy) {
				start = (unit ? ATA_SECONDARY : ATA_PRIMARY);
				count = ATA_IOSIZE;
				end = start + count - 1;
			    }
			    myrid = FUNC1(0) + (unit << 3);
			    res = FUNC0(FUNC3(dev), dev,
				SYS_RES_IOPORT, &myrid,
				start, end, count, flags);
			    break;
			case ATA_CTLADDR_RID:
			    if (controller->legacy) {
				start = (unit ? ATA_SECONDARY : ATA_PRIMARY) +
				    ATA_CTLOFFSET;
				count = ATA_CTLIOSIZE;
				end = start + count - 1;
			    }
			    myrid = FUNC1(1) + (unit << 3);
			    res = FUNC0(FUNC3(dev), dev,
				SYS_RES_IOPORT, &myrid,
				start, end, count, flags);
			    break;
			}
		}
		if (type == SYS_RES_IRQ && *rid == ATA_IRQ_RID) {
			if (controller->legacy) {
			    int irq = (unit == 0 ? 14 : 15);
	    
			    res = FUNC0(FUNC3(dev), child,
				SYS_RES_IRQ, rid, irq, irq, 1, flags);
			} else
			    res = controller->r_irq;
		}
	} else {
		if (type == SYS_RES_IRQ) {
			if (*rid != ATA_IRQ_RID)
				return (NULL);
			res = controller->r_irq;
		} else {
			res = FUNC0(FUNC3(dev), dev,
			     type, rid, start, end, count, flags);
		}
	}
	return (res);
}