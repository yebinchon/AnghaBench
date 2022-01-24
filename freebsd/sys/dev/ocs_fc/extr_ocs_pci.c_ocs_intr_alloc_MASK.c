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
struct TYPE_2__ {int vec; int /*<<< orphan*/  name; struct ocs_softc* softc; } ;
struct ocs_softc {int n_vec; int irqid; TYPE_1__ intr_ctx; int /*<<< orphan*/  dev; int /*<<< orphan*/ * irq; } ;
typedef  int int32_t ;

/* Variables and functions */
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*,int) ; 

__attribute__((used)) static int32_t
FUNC6(struct ocs_softc *ocs)
{

	ocs->n_vec = 1;
	if (FUNC4(ocs->dev, &ocs->n_vec)) {
		FUNC2(ocs->dev, "MSI-X allocation failed\n");
		if (FUNC3(ocs->dev, &ocs->n_vec)) {
			FUNC2(ocs->dev, "MSI allocation failed \n");
			ocs->irqid = 0;
			ocs->n_vec = 0;
		} else 
			ocs->irqid = 1;
	} else {
		ocs->irqid = 1;
	}

	ocs->irq = FUNC0(ocs->dev, SYS_RES_IRQ, &ocs->irqid,
			RF_ACTIVE | RF_SHAREABLE);
	if (NULL == ocs->irq) {
		FUNC2(ocs->dev, "could not allocate interrupt\n");
		return -1;
	}

	ocs->intr_ctx.vec = 0;
	ocs->intr_ctx.softc = ocs;
	FUNC5(ocs->intr_ctx.name, sizeof(ocs->intr_ctx.name),
			"%s_intr_%d",
			FUNC1(ocs->dev),
			ocs->intr_ctx.vec);

	return 0;
}