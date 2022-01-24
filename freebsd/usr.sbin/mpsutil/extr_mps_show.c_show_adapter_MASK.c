#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U16 ;
struct TYPE_16__ {int Word; } ;
struct TYPE_15__ {int PageLength; } ;
struct TYPE_18__ {char* BoardName; char* BoardAssembly; char* ChipName; char* ChipRevision; int BiosVersion; int IOCCapabilities; int NumPhys; TYPE_3__* PhyData; TYPE_2__ FWVersion; TYPE_1__ Header; } ;
struct TYPE_17__ {int PortFlags; int PhyFlags; int MaxMinLinkRate; scalar_t__ AttachedDevHandle; int ControllerDevHandle; int NegotiatedLinkRate; int /*<<< orphan*/  ControllerPhyDeviceInfo; } ;
typedef  TYPE_3__ MPI2_SAS_IO_UNIT1_PHY_DATA ;
typedef  TYPE_3__ MPI2_SAS_IO_UNIT0_PHY_DATA ;
typedef  TYPE_5__ MPI2_IOC_FACTS_REPLY ;
typedef  TYPE_5__ MPI2_CONFIG_PAGE_SASIOUNIT_1 ;
typedef  TYPE_5__ MPI2_CONFIG_PAGE_SASIOUNIT_0 ;
typedef  TYPE_5__ MPI2_CONFIG_PAGE_MAN_0 ;
typedef  TYPE_5__ MPI2_CONFIG_PAGE_BIOS_3 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MPI2_CONFIG_EXTPAGETYPE_SAS_IO_UNIT ; 
 int /*<<< orphan*/  MPI2_CONFIG_PAGETYPE_BIOS ; 
 int MPI2_IOCFACTS_CAPABILITY_INTEGRATED_RAID ; 
 int MPI2_SASIOUNIT0_PHYFLAGS_PHY_DISABLED ; 
 int MPI2_SASIOUNIT0_PORTFLAGS_DISCOVERY_IN_PROGRESS ; 
 int /*<<< orphan*/  MPI2_SASIOUNITPAGE0_PAGEVERSION ; 
 int /*<<< orphan*/  MPI2_SASIOUNITPAGE1_PAGEVERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ is_mps ; 
 TYPE_5__* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mps_unit ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int
FUNC13(int ac, char **av)
{
	MPI2_CONFIG_PAGE_SASIOUNIT_0	*sas0;
	MPI2_CONFIG_PAGE_SASIOUNIT_1	*sas1;
	MPI2_SAS_IO_UNIT0_PHY_DATA	*phy0;
	MPI2_SAS_IO_UNIT1_PHY_DATA	*phy1;
	MPI2_CONFIG_PAGE_MAN_0 *man0;
	MPI2_CONFIG_PAGE_BIOS_3 *bios3;
	MPI2_IOC_FACTS_REPLY *facts;
	U16 IOCStatus;
	char *speed, *minspeed, *maxspeed, *isdisabled, *type;
	char devhandle[5], ctrlhandle[5];
	int error, fd, v, i;

	if (ac != 1) {
		FUNC12("show adapter: extra arguments");
		return (EINVAL);
	}

	fd = FUNC5(mps_unit);
	if (fd < 0) {
		error = errno;
		FUNC11("mps_open");
		return (error);
	}

	man0 = FUNC8(fd, 0, NULL);
	if (man0 == NULL) {
		error = errno;
		FUNC11("Failed to get controller info");
		return (error);
	}
	if (man0->Header.PageLength < sizeof(*man0) / 4) {
		FUNC12("Invalid controller info");
		return (EINVAL);
	}
	FUNC9("mp%s%d Adapter:\n", is_mps ? "s": "r", mps_unit);
	FUNC9("       Board Name: %.16s\n", man0->BoardName);
	FUNC9("   Board Assembly: %.16s\n", man0->BoardAssembly);
	FUNC9("        Chip Name: %.16s\n", man0->ChipName);
	FUNC9("    Chip Revision: %.16s\n", man0->ChipRevision);
	FUNC1(man0);

	bios3 = FUNC6(fd, MPI2_CONFIG_PAGETYPE_BIOS, 3, 0, NULL);
	if (bios3 == NULL) {
		error = errno;
		FUNC11("Failed to get BIOS page 3 info");
		return (error);
	}
	v = bios3->BiosVersion;
	FUNC9("    BIOS Revision: %d.%02d.%02d.%02d\n",
	    ((v & 0xff000000) >> 24), ((v &0xff0000) >> 16),
	    ((v & 0xff00) >> 8), (v & 0xff));
	FUNC1(bios3);

	if ((facts = FUNC4(fd)) == NULL) {
		FUNC9("could not get controller IOCFacts\n");
		FUNC0(fd);
		return (errno);
	}
	v = facts->FWVersion.Word;
	FUNC9("Firmware Revision: %d.%02d.%02d.%02d\n",
	    ((v & 0xff000000) >> 24), ((v &0xff0000) >> 16),
	    ((v & 0xff00) >> 8), (v & 0xff));
	FUNC9("  Integrated RAID: %s\n",
	    (facts->IOCCapabilities & MPI2_IOCFACTS_CAPABILITY_INTEGRATED_RAID)
	    ? "yes" : "no");
	FUNC1(facts);

	fd = FUNC5(mps_unit);
	if (fd < 0) {
		error = errno;
		FUNC11("mps_open");
		return (error);
	}

	sas0 = FUNC7(fd,
	    MPI2_CONFIG_EXTPAGETYPE_SAS_IO_UNIT,
	    MPI2_SASIOUNITPAGE0_PAGEVERSION, 0, 0, &IOCStatus);
	if (sas0 == NULL) {
		error = errno;
		FUNC11("Error retrieving SAS IO Unit page %d", IOCStatus);
		FUNC1(sas0);
		FUNC0(fd);
		return (error);
	}

	sas1 = FUNC7(fd,
	    MPI2_CONFIG_EXTPAGETYPE_SAS_IO_UNIT,
	    MPI2_SASIOUNITPAGE1_PAGEVERSION, 1, 0, &IOCStatus);
	if (sas1 == NULL) {
		error = errno;
		FUNC11("Error retrieving SAS IO Unit page %d", IOCStatus);
		FUNC1(sas0);
		FUNC0(fd);
		return (error);
	}
	FUNC9("\n");

	FUNC9("%-8s%-12s%-11s%-10s%-8s%-7s%-7s%s\n", "PhyNum", "CtlrHandle",
	    "DevHandle", "Disabled", "Speed", "Min", "Max", "Device");
	for (i = 0; i < sas0->NumPhys; i++) {
		phy0 = &sas0->PhyData[i];
		phy1 = &sas1->PhyData[i];
		if (phy0->PortFlags &
		     MPI2_SASIOUNIT0_PORTFLAGS_DISCOVERY_IN_PROGRESS) {
			FUNC9("Discovery still in progress\n");
			continue;
		}
		if (phy0->PhyFlags & MPI2_SASIOUNIT0_PHYFLAGS_PHY_DISABLED)
			isdisabled = "Y";
		else
			isdisabled = "N";

		minspeed = FUNC2(phy1->MaxMinLinkRate);
		maxspeed = FUNC2(phy1->MaxMinLinkRate >> 4);
		type = FUNC3(phy0->ControllerPhyDeviceInfo);

		if (phy0->AttachedDevHandle != 0) {
			FUNC10(devhandle, 5, "%04x", phy0->AttachedDevHandle);
			FUNC10(ctrlhandle, 5, "%04x",
			    phy0->ControllerDevHandle);
			speed = FUNC2(phy0->NegotiatedLinkRate);
		} else {
			FUNC10(devhandle, 5, "    ");
			FUNC10(ctrlhandle, 5, "    ");
			speed = "     ";
		}
		FUNC9("%-8d%-12s%-11s%-10s%-8s%-7s%-7s%s\n",
		    i, ctrlhandle, devhandle, isdisabled, speed, minspeed,
		    maxspeed, type);
	}
	FUNC1(sas0);
	FUNC1(sas1);
	FUNC9("\n");
	FUNC0(fd);
	return (0);
}