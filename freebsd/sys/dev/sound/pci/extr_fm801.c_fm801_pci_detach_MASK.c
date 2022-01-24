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
struct fm801_info {int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/  ih; int /*<<< orphan*/  reg; int /*<<< orphan*/  regid; int /*<<< orphan*/  regtype; int /*<<< orphan*/ * radio; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fm801_info*,int /*<<< orphan*/ ) ; 
 struct fm801_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	int r;
	struct fm801_info *fm801;

	FUNC0("Forte Media FM801 detach\n");

	fm801 = FUNC7(dev);

	r = FUNC2(dev);
	if (r)
		return r;
	if (fm801->radio != NULL) {
		r = FUNC5(dev, fm801->radio);
		if (r)
			return r;
		fm801->radio = NULL;
	}

	r = FUNC8(dev);
	if (r)
		return r;

	FUNC3(dev, fm801->regtype, fm801->regid, fm801->reg);
	FUNC4(dev, fm801->irq, fm801->ih);
	FUNC3(dev, SYS_RES_IRQ, fm801->irqid, fm801->irq);
	FUNC1(fm801->parent_dmat);
	FUNC6(fm801, M_DEVBUF);
	return 0;
}