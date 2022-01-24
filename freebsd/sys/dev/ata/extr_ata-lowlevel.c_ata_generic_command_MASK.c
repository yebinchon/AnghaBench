#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int command; } ;
struct TYPE_5__ {scalar_t__ ccb; } ;
struct TYPE_8__ {TYPE_3__ ata; TYPE_1__ atapi; } ;
struct ata_request {int flags; int transfersize; TYPE_4__ u; int /*<<< orphan*/  parent; int /*<<< orphan*/  unit; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* tf_write ) (struct ata_request*) ;} ;
struct ata_channel {TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int ATAPI_P_CMDOUT ; 
 int ATA_A_4BIT ; 
 int /*<<< orphan*/  ATA_COMMAND ; 
 int /*<<< orphan*/  ATA_CONTROL ; 
 int /*<<< orphan*/  ATA_CYL_LSB ; 
 int /*<<< orphan*/  ATA_CYL_MSB ; 
 int /*<<< orphan*/  ATA_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATA_DRIVE ; 
 int ATA_D_IBM ; 
 int ATA_D_LBA ; 
 int /*<<< orphan*/  ATA_FEATURE ; 
 int ATA_F_DMA ; 
 int FUNC1 (struct ata_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ATA_IREASON ; 
 int ATA_I_CMD ; 
 int ATA_I_IN ; 
 int ATA_PACKET_CMD ; 
 int ATA_R_ATAPI ; 
 int ATA_R_ATAPI16 ; 
 int ATA_R_ATAPI_INTR ; 
 int ATA_R_DMA ; 
 int ATA_R_TIMEOUT ; 
 int /*<<< orphan*/  ATA_STATUS ; 
 int ATA_S_BUSY ; 
 int ATA_S_DRQ ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ata_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ata_request*) ; 

int
FUNC9(struct ata_request *request)
{
    struct ata_channel *ch = FUNC6(request->parent);

    /* select device */
    FUNC2(ch, ATA_DRIVE, ATA_D_IBM | ATA_D_LBA | FUNC0(request->unit));

    /* ready to issue command ? */
    if (FUNC5(ch, request->unit, 0) < 0) { 
	FUNC7(request->parent, "timeout waiting to issue command\n");
	request->flags |= ATA_R_TIMEOUT;
	return (-1);
    }

    /* enable interrupt */
    FUNC2(ch, ATA_CONTROL, ATA_A_4BIT);

    if (request->flags & ATA_R_ATAPI) {
	int timeout = 5000;
	int res;

	/* issue packet command to controller */
	if (request->flags & ATA_R_DMA) {
	    FUNC2(ch, ATA_FEATURE, ATA_F_DMA);
	    FUNC2(ch, ATA_CYL_LSB, 0);
	    FUNC2(ch, ATA_CYL_MSB, 0);
	}
	else {
	    FUNC2(ch, ATA_FEATURE, 0);
	    FUNC2(ch, ATA_CYL_LSB, request->transfersize);
	    FUNC2(ch, ATA_CYL_MSB, request->transfersize >> 8);
	}
	FUNC2(ch, ATA_COMMAND, ATA_PACKET_CMD);

	/* command interrupt device ? just return and wait for interrupt */
	if (request->flags & ATA_R_ATAPI_INTR)
	    return (0);

	/* command processed ? */
	res = FUNC5(ch, request->unit, 0);
	if (res != 0) {
	    if (res < 0) {
		    FUNC7(request->parent,
			"timeout waiting for PACKET command\n");
		    request->flags |= ATA_R_TIMEOUT;
	    }
	    return (-1);
	}
	/* wait for ready to write ATAPI command block */
	while (timeout--) {
	    int reason = FUNC1(ch, ATA_IREASON);
	    int status = FUNC1(ch, ATA_STATUS);

	    if (((reason & (ATA_I_CMD | ATA_I_IN)) |
		 (status & (ATA_S_DRQ | ATA_S_BUSY))) == ATAPI_P_CMDOUT)
		break;
	    FUNC4(20);
	}
	if (timeout <= 0) {
	    FUNC7(request->parent,
		"timeout waiting for ATAPI ready\n");
	    request->flags |= ATA_R_TIMEOUT;
	    return (-1);
	}

	/* this seems to be needed for some (slow) devices */
	FUNC4(10);
		    
	/* output command block */
	FUNC3(ch, ATA_DATA, (int16_t *)request->u.atapi.ccb,
			   (request->flags & ATA_R_ATAPI16) ? 8 : 6);
    }
    else {
	ch->hw.tf_write(request);

	/* issue command to controller */
	FUNC2(ch, ATA_COMMAND, request->u.ata.command);
    }
    return (0);
}