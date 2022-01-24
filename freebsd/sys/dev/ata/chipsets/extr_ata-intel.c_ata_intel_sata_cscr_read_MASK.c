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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_char ;
struct ata_pci_controller {int dummy; } ;
struct ata_channel {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_pci_controller*) ; 
 int* FUNC1 (struct ata_pci_controller*,struct ata_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_pci_controller*) ; 
#define  ATA_SCONTROL 130 
#define  ATA_SERROR 129 
#define  ATA_SSTATUS 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, int port, int reg, u_int32_t *result)
{
	struct ata_pci_controller *ctlr;
	struct ata_channel *ch;
	device_t parent;
	u_char *smap;

	parent = FUNC3(dev);
	ctlr = FUNC4(parent);
	ch = FUNC4(dev);
	smap = FUNC1(ctlr, ch);
	port = (port == 1) ? 1 : 0;
	switch (reg) {
	case ATA_SSTATUS:
	    reg = 0;
	    break;
	case ATA_SERROR:
	    reg = 1;
	    break;
	case ATA_SCONTROL:
	    reg = 2;
	    break;
	default:
	    return (EINVAL);
	}
	FUNC0(ctlr);
	FUNC6(parent, 0xa0,
	    0x50 + smap[port] * 0x10 + reg * 4, 4);
	*result = FUNC5(parent, 0xa4, 4);
	FUNC2(ctlr);
	return (0);
}