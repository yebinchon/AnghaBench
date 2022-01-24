#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct mptsas_devinfo {int /*<<< orphan*/  device_info; int /*<<< orphan*/  sas_address; int /*<<< orphan*/  bus; int /*<<< orphan*/  target_id; int /*<<< orphan*/  physical_port; int /*<<< orphan*/  phy_num; void* slot; void* enclosure_handle; void* parent_dev_handle; void* dev_handle; } ;
struct mpt_softc {int dummy; } ;
struct TYPE_9__ {scalar_t__ ExtPageLength; } ;
struct TYPE_8__ {int /*<<< orphan*/  DeviceInfo; int /*<<< orphan*/  SASAddress; int /*<<< orphan*/  Bus; int /*<<< orphan*/  TargetID; int /*<<< orphan*/  PhysicalPort; int /*<<< orphan*/  PhyNum; int /*<<< orphan*/  Slot; int /*<<< orphan*/  EnclosureHandle; int /*<<< orphan*/  ParentDevHandle; int /*<<< orphan*/  DevHandle; } ;
typedef  TYPE_1__ SasDevicePage0_t ;
typedef  TYPE_2__ ConfigExtendedPageHeader_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_READ_CURRENT ; 
 int /*<<< orphan*/  MPI_CONFIG_EXTPAGETYPE_SAS_DEVICE ; 
 int /*<<< orphan*/  MPI_SASDEVICE0_PAGEVERSION ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mptsas_devinfo*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct mpt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mpt_softc*,int /*<<< orphan*/ ,scalar_t__,TYPE_2__*,TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct mpt_softc *mpt, struct mptsas_devinfo *device_info,
	uint32_t form, uint32_t form_specific)
{
	ConfigExtendedPageHeader_t hdr;
	SasDevicePage0_t *buffer;
	uint64_t sas_address;
	int error = 0;

	FUNC1(device_info, sizeof(*device_info));
	error = FUNC7(mpt, MPI_SASDEVICE0_PAGEVERSION, 0, 0,
				       MPI_CONFIG_EXTPAGETYPE_SAS_DEVICE,
				       &hdr, 0, 10000);
	if (error)
		goto out;
	if (hdr.ExtPageLength == 0) {
		error = ENXIO;
		goto out;
	}

	buffer = FUNC6(sizeof(SasDevicePage0_t), M_DEVBUF, M_NOWAIT|M_ZERO);
	if (buffer == NULL) {
		error = ENOMEM;
		goto out;
	}

	error = FUNC8(mpt, MPI_CONFIG_ACTION_PAGE_READ_CURRENT,
				     form + form_specific, &hdr, buffer,
				     sizeof(SasDevicePage0_t), 0, 10000);
	if (error) {
		FUNC2(buffer, M_DEVBUF);
		goto out;
	}

	device_info->dev_handle = FUNC3(buffer->DevHandle);
	device_info->parent_dev_handle = FUNC3(buffer->ParentDevHandle);
	device_info->enclosure_handle = FUNC3(buffer->EnclosureHandle);
	device_info->slot = FUNC3(buffer->Slot);
	device_info->phy_num = buffer->PhyNum;
	device_info->physical_port = buffer->PhysicalPort;
	device_info->target_id = buffer->TargetID;
	device_info->bus = buffer->Bus;
	FUNC0(&buffer->SASAddress, &sas_address, sizeof(uint64_t));
	device_info->sas_address = FUNC5(sas_address);
	device_info->device_info = FUNC4(buffer->DeviceInfo);

	FUNC2(buffer, M_DEVBUF);
out:
	return (error);
}