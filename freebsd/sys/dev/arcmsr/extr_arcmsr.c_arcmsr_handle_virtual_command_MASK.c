#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data_ptr; int /*<<< orphan*/  scsi_status; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; scalar_t__ target_lun; } ;
union ccb {TYPE_2__ csio; TYPE_1__ ccb_h; } ;
struct AdapterControlBlock {int dummy; } ;
typedef  int /*<<< orphan*/  inqdata ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DEV_NOT_THERE ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_SCSI_STATUS_ERROR ; 
#define  INQUIRY 130 
#define  READ_BUFFER 129 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_COND ; 
 unsigned char T_PROCESSOR ; 
#define  WRITE_BUFFER 128 
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*,union ccb*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char*,int) ; 
 int* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (union ccb*) ; 

__attribute__((used)) static void FUNC5(struct AdapterControlBlock *acb,
		union ccb *pccb)
{
	if (pccb->ccb_h.target_lun) {
		pccb->ccb_h.status |= CAM_DEV_NOT_THERE;
		FUNC4(pccb);
		return;
	}
	pccb->ccb_h.status |= CAM_REQ_CMP;
	switch (FUNC2(&pccb->csio)[0]) {
	case INQUIRY: {
		unsigned char inqdata[36];
		char *buffer = pccb->csio.data_ptr;
	
		inqdata[0] = T_PROCESSOR;	/* Periph Qualifier & Periph Dev Type */
		inqdata[1] = 0;			/* rem media bit & Dev Type Modifier */
		inqdata[2] = 0;			/* ISO, ECMA, & ANSI versions */
		inqdata[3] = 0;
		inqdata[4] = 31;		/* length of additional data */
		inqdata[5] = 0;
		inqdata[6] = 0;
		inqdata[7] = 0;
		FUNC3(&inqdata[8], "Areca   ", 8);	/* Vendor Identification */
		FUNC3(&inqdata[16], "RAID controller ", 16);	/* Product Identification */
		FUNC3(&inqdata[32], "R001", 4); /* Product Revision */
		FUNC1(buffer, inqdata, sizeof(inqdata));
		FUNC4(pccb);
	}
	break;
	case WRITE_BUFFER:
	case READ_BUFFER: {
		if (FUNC0(acb, pccb)) {
			pccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR;
			pccb->csio.scsi_status = SCSI_STATUS_CHECK_COND;
		}
		FUNC4(pccb);
	}
	break;
	default:
		FUNC4(pccb);
	}
}