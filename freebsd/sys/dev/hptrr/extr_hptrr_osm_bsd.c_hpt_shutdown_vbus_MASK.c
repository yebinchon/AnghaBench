#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* him_handle; } ;
struct TYPE_15__ {TYPE_2__ ldm_adapter; struct TYPE_15__* next; int /*<<< orphan*/  irq_handle; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  pcidev; } ;
struct TYPE_12__ {scalar_t__ ta_context; } ;
struct TYPE_14__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; TYPE_4__* hba_list; TYPE_1__ worker; int /*<<< orphan*/  vbus; } ;
typedef  scalar_t__ PVDEV ;
typedef  TYPE_3__* PVBUS_EXT ;
typedef  int /*<<< orphan*/  PVBUS ;
typedef  TYPE_4__* PHBA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int osm_max_targets ; 

__attribute__((used)) static void FUNC13(PVBUS_EXT vbus_ext, int howto)
{
	PVBUS     vbus = (PVBUS)vbus_ext->vbus;
	PHBA hba;
	int i;
	
	FUNC0(("hpt_shutdown_vbus"));

	/* stop all ctl tasks and disable the worker taskqueue */
	FUNC7(vbus_ext);
	FUNC6(vbus_ext);
	vbus_ext->worker.ta_context = 0;

	/* flush devices */
	for (i=0; i<osm_max_targets; i++) {
		PVDEV vd = FUNC9(vbus, i);
		if (vd) {
			/* retry once */
			if (FUNC4(vbus_ext, vd))
				FUNC4(vbus_ext, vd);
		}
	}

	FUNC11(vbus);
	FUNC8(vbus_ext);

	FUNC10(vbus);

	for (hba=vbus_ext->hba_list; hba; hba=hba->next)
		FUNC1(hba->pcidev, hba->irq_res, hba->irq_handle);

	FUNC5(vbus_ext);

	while ((hba=vbus_ext->hba_list)) {
		vbus_ext->hba_list = hba->next;
		FUNC3(hba->ldm_adapter.him_handle, M_DEVBUF);
	}

	FUNC2(&vbus_ext->timer);
	FUNC12(&vbus_ext->lock);
	FUNC3(vbus_ext, M_DEVBUF);
	FUNC0(("hpt_shutdown_vbus done"));
}