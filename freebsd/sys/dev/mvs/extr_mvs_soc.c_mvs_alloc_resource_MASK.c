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
struct TYPE_2__ {struct resource* r_irq; } ;
struct mvs_controller {TYPE_1__ irq; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  sc_iomem; } ;
struct mvs_channel {int unit; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int ATA_IRQ_RID ; 
 int FUNC0 (int) ; 
 scalar_t__ PORT_SIZE ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *) ; 
 struct mvs_controller* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct resource *
FUNC9(device_t dev, device_t child, int type, int *rid,
		   rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct mvs_controller *ctlr = FUNC2(dev);
	int unit = ((struct mvs_channel *)FUNC2(child))->unit;
	struct resource *res = NULL;
	int offset = FUNC0(unit & 0x03);
	rman_res_t st;

	switch (type) {
	case SYS_RES_MEMORY:
		st = FUNC5(ctlr->r_mem);
		res = FUNC6(&ctlr->sc_iomem, st + offset,
		    st + offset + PORT_SIZE - 1, PORT_SIZE, RF_ACTIVE, child);
		if (res) {
			bus_space_handle_t bsh;
			bus_space_tag_t bst;
			bsh = FUNC3(ctlr->r_mem);
			bst = FUNC4(ctlr->r_mem);
			FUNC1(bst, bsh, offset, PORT_SIZE, &bsh);
			FUNC7(res, bsh);
			FUNC8(res, bst);
		}
		break;
	case SYS_RES_IRQ:
		if (*rid == ATA_IRQ_RID)
			res = ctlr->irq.r_irq;
		break;
	}
	return (res);
}