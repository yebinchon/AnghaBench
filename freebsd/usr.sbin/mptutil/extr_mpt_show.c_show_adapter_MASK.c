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
typedef  int U16 ;
struct TYPE_8__ {int PageLength; } ;
struct TYPE_9__ {char* BoardName; char* BoardAssembly; char* ChipName; char* ChipRevision; int CapabilitiesFlags; int MinDrivesIS; int MaxDrivesIS; int MinDrivesIM; int MaxDrivesIM; int MinDrivesIME; int MaxDrivesIME; int /*<<< orphan*/  SupportedStripeSizeMapIME; int /*<<< orphan*/  SupportedStripeSizeMapIS; TYPE_1__ Header; } ;
typedef  TYPE_2__ CONFIG_PAGE_MANUFACTURING_0 ;
typedef  TYPE_2__ CONFIG_PAGE_IOC_6 ;
typedef  TYPE_2__ CONFIG_PAGE_IOC_2 ;

/* Variables and functions */
 int EINVAL ; 
 int MPI_IOCPAGE2_CAP_FLAGS_IME_SUPPORT ; 
 int MPI_IOCPAGE2_CAP_FLAGS_IM_SUPPORT ; 
 int MPI_IOCPAGE2_CAP_FLAGS_IS_SUPPORT ; 
 int MPI_IOCPAGE2_CAP_FLAGS_RAID_10_SUPPORT ; 
 int MPI_IOCPAGE2_CAP_FLAGS_RAID_50_SUPPORT ; 
 int MPI_IOCPAGE2_CAP_FLAGS_RAID_5_SUPPORT ; 
 int MPI_IOCPAGE2_CAP_FLAGS_RAID_6_SUPPORT ; 
 int MPI_IOCSTATUS_CONFIG_INVALID_PAGE ; 
 int MPI_IOCSTATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 TYPE_2__* FUNC5 (int,int,int*) ; 
 TYPE_2__* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int mpt_unit ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int
FUNC10(int ac, char **av)
{
	CONFIG_PAGE_MANUFACTURING_0 *man0;
	CONFIG_PAGE_IOC_2 *ioc2;
	CONFIG_PAGE_IOC_6 *ioc6;
	U16 IOCStatus;
	int comma, error, fd;

	if (ac != 1) {
		FUNC9("show adapter: extra arguments");
		return (EINVAL);
	}

	fd = FUNC4(mpt_unit);
	if (fd < 0) {
		error = errno;
		FUNC8("mpt_open");
		return (error);
	}

	man0 = FUNC6(fd, 0, NULL);
	if (man0 == NULL) {
		error = errno;
		FUNC8("Failed to get controller info");
		FUNC0(fd);
		return (error);
	}
	if (man0->Header.PageLength < sizeof(*man0) / 4) {
		FUNC9("Invalid controller info");
		FUNC2(man0);
		FUNC0(fd);
		return (EINVAL);
	}
	FUNC7("mpt%d Adapter:\n", mpt_unit);
	FUNC7("       Board Name: %.16s\n", man0->BoardName);
	FUNC7("   Board Assembly: %.16s\n", man0->BoardAssembly);
	FUNC7("        Chip Name: %.16s\n", man0->ChipName);
	FUNC7("    Chip Revision: %.16s\n", man0->ChipRevision);

	FUNC2(man0);

	ioc2 = FUNC5(fd, 2, &IOCStatus);
	if (ioc2 != NULL) {
		FUNC7("      RAID Levels:");
		comma = 0;
		if (ioc2->CapabilitiesFlags &
		    MPI_IOCPAGE2_CAP_FLAGS_IS_SUPPORT) {
			FUNC7(" RAID0");
			comma = 1;
		}
		if (ioc2->CapabilitiesFlags &
		    MPI_IOCPAGE2_CAP_FLAGS_IM_SUPPORT) {
			FUNC7("%s RAID1", comma ? "," : "");
			comma = 1;
		}
		if (ioc2->CapabilitiesFlags &
		    MPI_IOCPAGE2_CAP_FLAGS_IME_SUPPORT) {
			FUNC7("%s RAID1E", comma ? "," : "");
			comma = 1;
		}
		if (ioc2->CapabilitiesFlags &
		    MPI_IOCPAGE2_CAP_FLAGS_RAID_5_SUPPORT) {
			FUNC7("%s RAID5", comma ? "," : "");
			comma = 1;
		}
		if (ioc2->CapabilitiesFlags &
		    MPI_IOCPAGE2_CAP_FLAGS_RAID_6_SUPPORT) {
			FUNC7("%s RAID6", comma ? "," : "");
			comma = 1;
		}
		if (ioc2->CapabilitiesFlags &
		    MPI_IOCPAGE2_CAP_FLAGS_RAID_10_SUPPORT) {
			FUNC7("%s RAID10", comma ? "," : "");
			comma = 1;
		}
		if (ioc2->CapabilitiesFlags &
		    MPI_IOCPAGE2_CAP_FLAGS_RAID_50_SUPPORT) {
			FUNC7("%s RAID50", comma ? "," : "");
			comma = 1;
		}
		if (!comma)
			FUNC7(" none");
		FUNC7("\n");
		FUNC2(ioc2);
	} else if ((IOCStatus & MPI_IOCSTATUS_MASK) !=
	    MPI_IOCSTATUS_CONFIG_INVALID_PAGE)
		FUNC9("mpt_read_ioc_page(2): %s", FUNC3(IOCStatus));

	ioc6 = FUNC5(fd, 6, &IOCStatus);
	if (ioc6 != NULL) {
		FUNC1("    RAID0 Stripes",
		    ioc6->SupportedStripeSizeMapIS);
		FUNC1("   RAID1E Stripes",
		    ioc6->SupportedStripeSizeMapIME);
		FUNC7(" RAID0 Drives/Vol: %u", ioc6->MinDrivesIS);
		if (ioc6->MinDrivesIS != ioc6->MaxDrivesIS)
			FUNC7("-%u", ioc6->MaxDrivesIS);
		FUNC7("\n");
		FUNC7(" RAID1 Drives/Vol: %u", ioc6->MinDrivesIM);
		if (ioc6->MinDrivesIM != ioc6->MaxDrivesIM)
			FUNC7("-%u", ioc6->MaxDrivesIM);
		FUNC7("\n");
		FUNC7("RAID1E Drives/Vol: %u", ioc6->MinDrivesIME);
		if (ioc6->MinDrivesIME != ioc6->MaxDrivesIME)
			FUNC7("-%u", ioc6->MaxDrivesIME);
		FUNC7("\n");
		FUNC2(ioc6);
	} else if ((IOCStatus & MPI_IOCSTATUS_MASK) !=
	    MPI_IOCSTATUS_CONFIG_INVALID_PAGE)
		FUNC9("mpt_read_ioc_page(6): %s", FUNC3(IOCStatus));

	/* TODO: Add an ioctl to fetch IOC_FACTS and print firmware version. */

	FUNC0(fd);

	return (0);
}