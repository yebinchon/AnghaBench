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
struct scb {int sg_count; TYPE_2__* sg_list; struct hardware_scb* hscb; } ;
struct TYPE_3__ {int* cdb; } ;
struct hardware_scb {int control; int scsiid; int lun; int cdb_len; int tag; int /*<<< orphan*/  sgptr; int /*<<< orphan*/  datacnt; int /*<<< orphan*/  dataptr; TYPE_1__ shared_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int SG_HIGH_ADDR_BITS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(struct scb *scb)
{
	int i;

	struct hardware_scb *hscb = scb->hscb;

	FUNC1("scb:%p control:0x%x scsiid:0x%x lun:%d cdb_len:%d\n",
	       (void *)scb,
	       hscb->control,
	       hscb->scsiid,
	       hscb->lun,
	       hscb->cdb_len);
	FUNC1("Shared Data: ");
	for (i = 0; i < sizeof(hscb->shared_data.cdb); i++)
		FUNC1("%#02x", hscb->shared_data.cdb[i]);
	FUNC1("        dataptr:%#x datacnt:%#x sgptr:%#x tag:%#x\n",
		FUNC0(hscb->dataptr),
		FUNC0(hscb->datacnt),
		FUNC0(hscb->sgptr),
		hscb->tag);
	if (scb->sg_count > 0) {
		for (i = 0; i < scb->sg_count; i++) {
			FUNC1("sg[%d] - Addr 0x%x%x : Length %d\n",
			       i,
			       (FUNC0(scb->sg_list[i].len) >> 24
			        & SG_HIGH_ADDR_BITS),
			       FUNC0(scb->sg_list[i].addr),
			       FUNC0(scb->sg_list[i].len));
		}
	}
}