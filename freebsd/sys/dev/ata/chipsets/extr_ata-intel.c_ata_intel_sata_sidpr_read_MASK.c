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
struct ata_pci_controller {int dummy; } ;
struct ata_channel {int unit; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_IDX_ADDR ; 
 int /*<<< orphan*/  ATA_IDX_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct ata_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_pci_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_pci_controller*) ; 
#define  ATA_SCONTROL 130 
#define  ATA_SERROR 129 
#define  ATA_SSTATUS 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int port, int reg, u_int32_t *result)
{
	struct ata_pci_controller *ctlr;
	struct ata_channel *ch;
	device_t parent;

	parent = FUNC4(dev);
	ctlr = FUNC5(parent);
	ch = FUNC5(dev);
	port = (port == 1) ? 1 : 0;
	switch (reg) {
	case ATA_SSTATUS:
	    reg = 0;
	    break;
	case ATA_SCONTROL:
	    reg = 1;
	    break;
	case ATA_SERROR:
	    reg = 2;
	    break;
	default:
	    return (EINVAL);
	}
	FUNC2(ctlr);
	FUNC1(ch, ATA_IDX_ADDR, ((ch->unit * 2 + port) << 8) + reg);
	*result = FUNC0(ch, ATA_IDX_DATA);
	FUNC3(ctlr);
	return (0);
}