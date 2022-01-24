#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;
struct TYPE_4__ {int invalid; int /*<<< orphan*/  volume_status; int /*<<< orphan*/  volume_offline; int /*<<< orphan*/  expose_device; int /*<<< orphan*/  is_physical_device; int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  bus; int /*<<< orphan*/  model; int /*<<< orphan*/  vendor; } ;
typedef  TYPE_1__ pqi_scsi_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC3(pqisrc_softstate_t *softs,
	pqi_scsi_dev_t *device)
{
	FUNC1("IN\n");
	FUNC0("vendor: %s model: %s bus:%d target:%d lun:%d is_physical_device:0x%x expose_device:0x%x volume_offline 0x%x volume_status 0x%x \n",
		device->vendor, device->model, device->bus, device->target, device->lun, device->is_physical_device, device->expose_device, device->volume_offline, device->volume_status);

	/* TBD: Call OS upper layer function to remove the device entry */
	device->invalid = true;
	FUNC2(softs,device);
	FUNC1("OUT\n");
}