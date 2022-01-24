#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_11__ {void* dev_handle; } ;
struct TYPE_10__ {void* dev_handle; } ;
struct mptsas_phyinfo {TYPE_2__ attached; TYPE_1__ identify; int /*<<< orphan*/  programmed_link_rate; int /*<<< orphan*/  hw_link_rate; } ;
struct mpt_softc {int dummy; } ;
struct TYPE_13__ {scalar_t__ ExtPageLength; } ;
struct TYPE_12__ {int /*<<< orphan*/  AttachedDevHandle; int /*<<< orphan*/  OwnerDevHandle; int /*<<< orphan*/  ProgrammedLinkRate; int /*<<< orphan*/  HwLinkRate; } ;
typedef  TYPE_3__ SasPhyPage0_t ;
typedef  TYPE_4__ ConfigExtendedPageHeader_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_READ_CURRENT ; 
 int /*<<< orphan*/  MPI_CONFIG_EXTPAGETYPE_SAS_PHY ; 
 int /*<<< orphan*/  MPI_SASPHY0_PAGEVERSION ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mpt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mpt_softc*,int /*<<< orphan*/ ,scalar_t__,TYPE_4__*,TYPE_3__*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct mpt_softc *mpt, struct mptsas_phyinfo *phy_info,
	uint32_t form, uint32_t form_specific)
{
	ConfigExtendedPageHeader_t hdr;
	SasPhyPage0_t *buffer;
	int error;

	error = FUNC3(mpt, MPI_SASPHY0_PAGEVERSION, 0, 0,
				       MPI_CONFIG_EXTPAGETYPE_SAS_PHY, &hdr,
				       0, 10000);
	if (error)
		goto out;
	if (hdr.ExtPageLength == 0) {
		error = ENXIO;
		goto out;
	}

	buffer = FUNC2(sizeof(SasPhyPage0_t), M_DEVBUF, M_NOWAIT|M_ZERO);
	if (buffer == NULL) {
		error = ENOMEM;
		goto out;
	}

	error = FUNC4(mpt, MPI_CONFIG_ACTION_PAGE_READ_CURRENT,
				     form + form_specific, &hdr, buffer,
				     sizeof(SasPhyPage0_t), 0, 10000);
	if (error) {
		FUNC0(buffer, M_DEVBUF);
		goto out;
	}

	phy_info->hw_link_rate = buffer->HwLinkRate;
	phy_info->programmed_link_rate = buffer->ProgrammedLinkRate;
	phy_info->identify.dev_handle = FUNC1(buffer->OwnerDevHandle);
	phy_info->attached.dev_handle = FUNC1(buffer->AttachedDevHandle);

	FUNC0(buffer, M_DEVBUF);
out:
	return (error);
}