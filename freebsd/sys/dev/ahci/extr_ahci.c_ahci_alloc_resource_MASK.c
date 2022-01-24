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
typedef  int /*<<< orphan*/  u_int ;
struct resource {int dummy; } ;
struct ahci_controller {int remap_size; int emloc; int capsem; TYPE_1__* irqs; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  sc_iomem; int /*<<< orphan*/  remap_offset; scalar_t__ channels; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;
struct TYPE_2__ {struct resource* r_irq; } ;

/* Variables and functions */
 int AHCI_EM_CTL ; 
 int AHCI_EM_SMB ; 
 int AHCI_EM_UNIT ; 
 int AHCI_EM_XMT ; 
 int /*<<< orphan*/  AHCI_OFFSET ; 
 int AHCI_REMAPPED_UNIT ; 
 int AHCI_UNIT ; 
 int ATA_IRQ_RID ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct ahci_controller* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,int /*<<< orphan*/ ) ; 

struct resource *
FUNC9(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct ahci_controller *ctlr = FUNC2(dev);
	struct resource *res;
	rman_res_t st;
	int offset, size, unit;
	bool is_em, is_remapped;

	unit = (intptr_t)FUNC1(child);
	is_em = is_remapped = false;
	if (unit & AHCI_REMAPPED_UNIT) {
		unit &= AHCI_UNIT;
		unit -= ctlr->channels;
		is_remapped = true;
	} else if (unit & AHCI_EM_UNIT) {
		unit &= AHCI_UNIT;
		is_em = true;
	}
	res = NULL;
	switch (type) {
	case SYS_RES_MEMORY:
		if (is_remapped) {
			offset = ctlr->remap_offset + unit * ctlr->remap_size;
			size = ctlr->remap_size;
		} else if (!is_em) {
			offset = AHCI_OFFSET + (unit << 7);
			size = 128;
		} else if (*rid == 0) {
			offset = AHCI_EM_CTL;
			size = 4;
		} else {
			offset = (ctlr->emloc & 0xffff0000) >> 14;
			size = (ctlr->emloc & 0x0000ffff) << 2;
			if (*rid != 1) {
				if (*rid == 2 && (ctlr->capsem &
				    (AHCI_EM_XMT | AHCI_EM_SMB)) == 0)
					offset += size;
				else
					break;
			}
		}
		st = FUNC5(ctlr->r_mem);
		res = FUNC6(&ctlr->sc_iomem, st + offset,
		    st + offset + size - 1, size, RF_ACTIVE, child);
		if (res) {
			bus_space_handle_t bsh;
			bus_space_tag_t bst;
			bsh = FUNC3(ctlr->r_mem);
			bst = FUNC4(ctlr->r_mem);
			FUNC0(bst, bsh, offset, 128, &bsh);
			FUNC7(res, bsh);
			FUNC8(res, bst);
		}
		break;
	case SYS_RES_IRQ:
		if (*rid == ATA_IRQ_RID)
			res = ctlr->irqs[0].r_irq;
		break;
	}
	return (res);
}