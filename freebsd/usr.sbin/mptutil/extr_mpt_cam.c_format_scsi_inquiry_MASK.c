#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vendor ;
struct scsi_inquiry_data {int /*<<< orphan*/  revision; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; } ;
struct mpt_standalone_disk {int /*<<< orphan*/  inqstring; } ;
typedef  int /*<<< orphan*/  rstr ;
typedef  int /*<<< orphan*/  revision ;
typedef  int /*<<< orphan*/  product ;

/* Variables and functions */
#define  SCSI_REV_CCS 128 
 int FUNC0 (struct scsi_inquiry_data*) ; 
 scalar_t__ FUNC1 (struct scsi_inquiry_data*) ; 
 scalar_t__ FUNC2 (struct scsi_inquiry_data*) ; 
 scalar_t__ SID_QUAL_LU_CONNECTED ; 
 scalar_t__ FUNC3 (struct scsi_inquiry_data*) ; 
 scalar_t__ T_DIRECT ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static void
FUNC8(struct mpt_standalone_disk *disk,
    struct scsi_inquiry_data *inq_data)
{
	char vendor[16], product[48], revision[16], rstr[12];

	if (FUNC2(inq_data))
		return;
	if (FUNC3(inq_data) != T_DIRECT)
		return;
	if (FUNC1(inq_data) != SID_QUAL_LU_CONNECTED)
		return;

	FUNC4(vendor, inq_data->vendor, sizeof(inq_data->vendor),
	    sizeof(vendor));
	FUNC4(product, inq_data->product, sizeof(inq_data->product),
	    sizeof(product));
	FUNC4(revision, inq_data->revision, sizeof(inq_data->revision),
	    sizeof(revision));

	/* Hack for SATA disks, no idea how to tell speed. */
	if (FUNC6(vendor, "ATA") == 0) {
		FUNC5(disk->inqstring, sizeof(disk->inqstring),
		    "<%s %s> SATA", product, revision);
		return;
	}

	switch (FUNC0(inq_data)) {
	case SCSI_REV_CCS:
		FUNC7(rstr, "SCSI-CCS");
		break;
	case 5:
		FUNC7(rstr, "SAS");
		break;
	default:
		FUNC5(rstr, sizeof (rstr), "SCSI-%d",
		    FUNC0(inq_data));
		break;
	}
	FUNC5(disk->inqstring, sizeof(disk->inqstring), "<%s %s %s> %s",
	    vendor, product, revision, rstr);
}