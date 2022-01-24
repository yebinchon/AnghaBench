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
struct TYPE_2__ {struct resource* r_irq; } ;
struct siis_controller {TYPE_1__ irq; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  sc_iomem; } ;
struct siis_channel {int unit; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int ATA_IRQ_RID ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 struct siis_controller* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct resource *
FUNC8(device_t dev, device_t child, int type, int *rid,
		    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct siis_controller *ctlr = FUNC1(dev);
	int unit = ((struct siis_channel *)FUNC1(child))->unit;
	struct resource *res = NULL;
	int offset = unit << 13;
	rman_res_t st;

	switch (type) {
	case SYS_RES_MEMORY:
		st = FUNC4(ctlr->r_mem);
		res = FUNC5(&ctlr->sc_iomem, st + offset,
		    st + offset + 0x2000, 0x2000, RF_ACTIVE, child);
		if (res) {
			bus_space_handle_t bsh;
			bus_space_tag_t bst;
			bsh = FUNC2(ctlr->r_mem);
			bst = FUNC3(ctlr->r_mem);
			FUNC0(bst, bsh, offset, 0x2000, &bsh);
			FUNC6(res, bsh);
			FUNC7(res, bst);
		}
		break;
	case SYS_RES_IRQ:
		if (*rid == ATA_IRQ_RID)
			res = ctlr->irq.r_irq;
		break;
	}
	return (res);
}