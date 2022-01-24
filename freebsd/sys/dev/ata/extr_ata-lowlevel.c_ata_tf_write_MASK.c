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
struct TYPE_3__ {int feature; int count; int lba; } ;
struct TYPE_4__ {TYPE_1__ ata; } ;
struct ata_request {int flags; TYPE_2__ u; int /*<<< orphan*/  unit; int /*<<< orphan*/  parent; } ;
struct ata_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_COUNT ; 
 int /*<<< orphan*/  ATA_CYL_LSB ; 
 int /*<<< orphan*/  ATA_CYL_MSB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATA_DRIVE ; 
 int ATA_D_IBM ; 
 int ATA_D_LBA ; 
 int /*<<< orphan*/  ATA_FEATURE ; 
 int /*<<< orphan*/  FUNC1 (struct ata_channel*,int /*<<< orphan*/ ,int) ; 
 int ATA_R_48BIT ; 
 int /*<<< orphan*/  ATA_SECTOR ; 
 struct ata_channel* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ata_request *request)
{
    struct ata_channel *ch = FUNC2(request->parent);

    if (request->flags & ATA_R_48BIT) {
	FUNC1(ch, ATA_FEATURE, request->u.ata.feature >> 8);
	FUNC1(ch, ATA_FEATURE, request->u.ata.feature);
	FUNC1(ch, ATA_COUNT, request->u.ata.count >> 8);
	FUNC1(ch, ATA_COUNT, request->u.ata.count);
	FUNC1(ch, ATA_SECTOR, request->u.ata.lba >> 24);
	FUNC1(ch, ATA_SECTOR, request->u.ata.lba);
	FUNC1(ch, ATA_CYL_LSB, request->u.ata.lba >> 32);
	FUNC1(ch, ATA_CYL_LSB, request->u.ata.lba >> 8);
	FUNC1(ch, ATA_CYL_MSB, request->u.ata.lba >> 40);
	FUNC1(ch, ATA_CYL_MSB, request->u.ata.lba >> 16);
	FUNC1(ch, ATA_DRIVE, ATA_D_LBA | FUNC0(request->unit));
    }
    else {
	FUNC1(ch, ATA_FEATURE, request->u.ata.feature);
	FUNC1(ch, ATA_COUNT, request->u.ata.count);
	    FUNC1(ch, ATA_SECTOR, request->u.ata.lba);
	    FUNC1(ch, ATA_CYL_LSB, request->u.ata.lba >> 8);
	    FUNC1(ch, ATA_CYL_MSB, request->u.ata.lba >> 16);
	    FUNC1(ch, ATA_DRIVE,
			 ATA_D_IBM | ATA_D_LBA | FUNC0(request->unit) |
			 ((request->u.ata.lba >> 24) & 0x0f));
    }
}