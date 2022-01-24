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
struct iser_data_buf {int dummy; } ;
struct ccb_hdr {int flags; } ;
struct ccb_scsiio {scalar_t__ data_ptr; struct ccb_hdr ccb_h; } ;
struct bio {int dummy; } ;

/* Variables and functions */
#define  CAM_DATA_BIO 129 
 int CAM_DATA_MASK ; 
#define  CAM_DATA_VADDR 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct iser_data_buf*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct iser_data_buf*) ; 

__attribute__((used)) static int
FUNC3(struct ccb_scsiio *csio, struct iser_data_buf *data_buf)
{
	struct ccb_hdr *ccbh;
	int err = 0;

	ccbh = &csio->ccb_h;
	switch ((ccbh->flags & CAM_DATA_MASK)) {
		case CAM_DATA_BIO:
			FUNC1((struct bio *) csio->data_ptr, data_buf);
			break;
		case CAM_DATA_VADDR:
			/*
			 * Support KVA buffers for various scsi commands such as:
			 *  - REPORT_LUNS
			 *  - MODE_SENSE_6
			 *  - INQUIRY
			 *  - SERVICE_ACTION_IN.
			 * The data of these commands always mapped into KVA.
			 */
			FUNC2(csio->data_ptr, data_buf);
			break;
		default:
			FUNC0("flags 0x%X unimplemented", ccbh->flags);
			err = EINVAL;
	}
	return (err);
}