#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ msi_enabled; int /*<<< orphan*/  pqi_dev; } ;
struct TYPE_7__ {scalar_t__ intr_type; TYPE_1__ os_specific; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ INTR_TYPE_FIXED ; 
 scalar_t__ INTR_TYPE_MSIX ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(pqisrc_softstate_t *softs)
{
	device_t dev;
	dev = softs->os_specific.pqi_dev;

	FUNC0("IN\n");

	if (softs->intr_type == INTR_TYPE_FIXED) {
		FUNC1(softs);
	} else if (softs->intr_type == INTR_TYPE_MSIX) {
		FUNC2(softs);
	}
	if (softs->os_specific.msi_enabled) {
		FUNC3(dev);
		softs->os_specific.msi_enabled = FALSE;
	} 
	
	FUNC0("OUT\n");

	return PQI_STATUS_SUCCESS;
}