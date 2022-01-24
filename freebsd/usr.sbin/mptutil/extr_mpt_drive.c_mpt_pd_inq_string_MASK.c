#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vendor ;
typedef  char u_char ;
typedef  int /*<<< orphan*/  revision ;
typedef  int /*<<< orphan*/  product ;
typedef  int /*<<< orphan*/  inq_string ;
struct TYPE_4__ {int /*<<< orphan*/  ProductRevLevel; int /*<<< orphan*/  ProductID; int /*<<< orphan*/  VendorID; } ;
struct TYPE_5__ {TYPE_1__ InquiryData; } ;
typedef  TYPE_1__ RAID_PHYS_DISK0_INQUIRY_DATA ;
typedef  TYPE_2__ CONFIG_PAGE_RAID_PHYS_DISK_0 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

const char *
FUNC3(CONFIG_PAGE_RAID_PHYS_DISK_0 *pd_info)
{
	RAID_PHYS_DISK0_INQUIRY_DATA *inq_data;
	u_char vendor[9], product[17], revision[5];
	static char inq_string[64];

	inq_data = &pd_info->InquiryData;
	FUNC0(vendor, inq_data->VendorID, sizeof(inq_data->VendorID),
	    sizeof(vendor));
	FUNC0(product, inq_data->ProductID, sizeof(inq_data->ProductID),
	    sizeof(product));
	FUNC0(revision, inq_data->ProductRevLevel,
	    sizeof(inq_data->ProductRevLevel), sizeof(revision));

	/* Total hack. */
	if (FUNC2(vendor, "ATA") == 0)
		FUNC1(inq_string, sizeof(inq_string), "<%s %s> SATA",
		    product, revision);
	else
		FUNC1(inq_string, sizeof(inq_string), "<%s %s %s> SAS",
		    vendor, product, revision);
	return (inq_string);
}