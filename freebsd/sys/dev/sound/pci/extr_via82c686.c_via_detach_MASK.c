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
struct via_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  sgd_dmat; int /*<<< orphan*/  sgd_dmamap; int /*<<< orphan*/  sgd_table; int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/  ih; int /*<<< orphan*/  reg; int /*<<< orphan*/  regid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct via_info*,int /*<<< orphan*/ ) ; 
 struct via_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	int r;
	struct via_info *via = NULL;

	r = FUNC7(dev);
	if (r)
		return r;

	via = FUNC6(dev);
	FUNC3(dev, SYS_RES_IOPORT, via->regid, via->reg);
	FUNC4(dev, via->irq, via->ih);
	FUNC3(dev, SYS_RES_IRQ, via->irqid, via->irq);
	FUNC0(via->parent_dmat);
	FUNC1(via->sgd_dmat, via->sgd_dmamap);
	FUNC2(via->sgd_dmat, via->sgd_table, via->sgd_dmamap);
	FUNC0(via->sgd_dmat);
	FUNC8(via->lock);
	FUNC5(via, M_DEVBUF);
	return 0;
}