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
struct scsi_inquiry_data {char* vendor; char* product; char* revision; scalar_t__ vendor_specific0; } ;
struct mfi_pd_info {int /*<<< orphan*/  inquiry_data; } ;
typedef  int /*<<< orphan*/  serial ;
typedef  int /*<<< orphan*/  rstr ;
typedef  int /*<<< orphan*/  revision ;
typedef  int /*<<< orphan*/  product ;
typedef  int /*<<< orphan*/  iqd ;
typedef  int /*<<< orphan*/  inq_string ;

/* Variables and functions */
#define  SCSI_REV_CCS 128 
 int FUNC0 (struct scsi_inquiry_data*) ; 
 scalar_t__ FUNC1 (struct scsi_inquiry_data*) ; 
 scalar_t__ FUNC2 (struct scsi_inquiry_data*) ; 
 scalar_t__ SID_QUAL_LU_CONNECTED ; 
 scalar_t__ FUNC3 (struct scsi_inquiry_data*) ; 
 int SID_VENDOR_SPECIFIC_0_SIZE ; 
 scalar_t__ T_DIRECT ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_inquiry_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,...) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

const char *
FUNC9(struct mfi_pd_info *info)
{
	struct scsi_inquiry_data iqd, *inq_data = &iqd;
	char vendor[16], product[48], revision[16], rstr[12], serial[SID_VENDOR_SPECIFIC_0_SIZE];
	static char inq_string[64];

	FUNC5(inq_data, info->inquiry_data,
	    (sizeof (iqd) <  sizeof (info->inquiry_data))?
	    sizeof (iqd) : sizeof (info->inquiry_data));
	if (FUNC2(inq_data))
		return (NULL);
	if (FUNC3(inq_data) != T_DIRECT)
		return (NULL);
	if (FUNC1(inq_data) != SID_QUAL_LU_CONNECTED)
		return (NULL);

	FUNC4(vendor, inq_data->vendor, sizeof(inq_data->vendor),
	    sizeof(vendor));
	FUNC4(product, inq_data->product, sizeof(inq_data->product),
	    sizeof(product));
	FUNC4(revision, inq_data->revision, sizeof(inq_data->revision),
	    sizeof(revision));
	FUNC4(serial, (char *)inq_data->vendor_specific0, sizeof(inq_data->vendor_specific0),
	    sizeof(serial));

	/* Hack for SATA disks, no idea how to tell speed. */
	if (FUNC7(vendor, "ATA") == 0) {
		FUNC6(inq_string, sizeof(inq_string), "<%s %s serial=%s> SATA",
		    product, revision, serial);
		return (inq_string);
	}

	switch (FUNC0(inq_data)) {
	case SCSI_REV_CCS:
		FUNC8(rstr, "SCSI-CCS");
		break;
	case 5:
		FUNC8(rstr, "SAS");
		break;
	default:
		FUNC6(rstr, sizeof (rstr), "SCSI-%d",
		    FUNC0(inq_data));
		break;
	}
	FUNC6(inq_string, sizeof(inq_string), "<%s %s %s serial=%s> %s", vendor,
	    product, revision, serial, rstr);
	return (inq_string);
}