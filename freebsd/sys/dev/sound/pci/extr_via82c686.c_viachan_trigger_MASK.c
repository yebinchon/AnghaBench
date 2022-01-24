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
struct via_info {int /*<<< orphan*/  lock; } ;
struct via_dma_op {int dummy; } ;
struct via_chinfo {int sgd_addr; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  base; struct via_dma_op* sgd_table; struct via_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;
typedef  int bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PCMTRIG_START ; 
 int VIA_RPCTRL_START ; 
 int VIA_RPCTRL_TERMINATE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct via_chinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct via_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC7(kobj_t obj, void *data, int go)
{
	struct via_chinfo *ch = data;
	struct via_info *via = ch->parent;
	struct via_dma_op *ado;
	bus_addr_t sgd_addr = ch->sgd_addr;

	if (!FUNC1(go))
		return 0;

	ado = ch->sgd_table;
	FUNC0(FUNC2("ado located at va=%p pa=%x\n", ado, sgd_addr));

	FUNC3(via->lock);
	if (go == PCMTRIG_START) {
		FUNC5(ch);
		FUNC6(via, ch->base, sgd_addr, 4);
		FUNC6(via, ch->ctrl, VIA_RPCTRL_START, 1);
	} else
		FUNC6(via, ch->ctrl, VIA_RPCTRL_TERMINATE, 1);
	FUNC4(via->lock);

	FUNC0(FUNC2("viachan_trigger: go=%d\n", go));
	return 0;
}