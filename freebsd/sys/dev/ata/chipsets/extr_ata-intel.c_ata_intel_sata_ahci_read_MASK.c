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
struct ata_pci_controller {int /*<<< orphan*/  r_res2; } ;
struct ata_channel {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int* FUNC1 (struct ata_pci_controller*,struct ata_channel*) ; 
#define  ATA_SCONTROL 130 
#define  ATA_SERROR 129 
#define  ATA_SSTATUS 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int port, int reg, u_int32_t *result)
{
	struct ata_pci_controller *ctlr;
	struct ata_channel *ch;
	device_t parent;
	u_char *smap;
	int offset;

	parent = FUNC2(dev);
	ctlr = FUNC3(parent);
	ch = FUNC3(dev);
	port = (port == 1) ? 1 : 0;
	smap = FUNC1(ctlr, ch);
	offset = 0x100 + smap[port] * 0x80;
	switch (reg) {
	case ATA_SSTATUS:
	    reg = 0x28;
	    break;
	case ATA_SCONTROL:
	    reg = 0x2c;
	    break;
	case ATA_SERROR:
	    reg = 0x30;
	    break;
	default:
	    return (EINVAL);
	}
	*result = FUNC0(ctlr->r_res2, offset + reg);
	return (0);
}