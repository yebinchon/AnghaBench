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
typedef  int uint32_t ;
struct scb {struct hardware_scb* hscb; } ;
struct TYPE_3__ {int* cdb; } ;
struct TYPE_4__ {TYPE_1__ idata; } ;
struct hardware_scb {int control; int scsiid; int lun; int cdb_len; int /*<<< orphan*/  sgptr; int /*<<< orphan*/  datacnt; int /*<<< orphan*/  dataptr; TYPE_2__ shared_data; } ;

/* Variables and functions */
 int FUNC0 (struct scb*) ; 
 int /*<<< orphan*/  FUNC1 (struct scb*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void
FUNC5(struct scb *scb)
{
	struct hardware_scb *hscb;
	int i;

	hscb = scb->hscb;
	FUNC4("scb:%p control:0x%x scsiid:0x%x lun:%d cdb_len:%d\n",
	       (void *)scb,
	       hscb->control,
	       hscb->scsiid,
	       hscb->lun,
	       hscb->cdb_len);
	FUNC4("Shared Data: ");
	for (i = 0; i < sizeof(hscb->shared_data.idata.cdb); i++)
		FUNC4("%#02x", hscb->shared_data.idata.cdb[i]);
	FUNC4("        dataptr:%#x%x datacnt:%#x sgptr:%#x tag:%#x\n",
	       (uint32_t)((FUNC3(hscb->dataptr) >> 32) & 0xFFFFFFFF),
	       (uint32_t)(FUNC3(hscb->dataptr) & 0xFFFFFFFF),
	       FUNC2(hscb->datacnt),
	       FUNC2(hscb->sgptr),
	       FUNC0(scb));
	FUNC1(scb);
}