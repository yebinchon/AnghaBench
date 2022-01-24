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
struct nvdimm_spa_dev {int /*<<< orphan*/ * spa_kva; int /*<<< orphan*/  spa_len; int /*<<< orphan*/  spa_obj; int /*<<< orphan*/ * spa_dev; TYPE_1__* spa_g; } ;
struct TYPE_2__ {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct nvdimm_spa_dev *dev)
{

	if (dev->spa_g != NULL) {
		FUNC1();
		FUNC3(NULL, dev->spa_g->class, dev->spa_g);
		FUNC2();
	}
	if (dev->spa_dev != NULL) {
		FUNC0(dev->spa_dev);
		dev->spa_dev = NULL;
	}
	FUNC5(dev->spa_obj);
	if (dev->spa_kva != NULL) {
		FUNC4(dev->spa_kva, dev->spa_len);
		dev->spa_kva = NULL;
	}
}