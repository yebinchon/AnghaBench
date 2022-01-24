#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ata_pci_controller {int /*<<< orphan*/  r_res1; } ;
struct ata_channel {int /*<<< orphan*/  flags; TYPE_1__* r_io; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int offset; int /*<<< orphan*/  res; } ;

/* Variables and functions */
 size_t ATA_ALTSTAT ; 
 int /*<<< orphan*/  ATA_CHECKS_CABLE ; 
 size_t ATA_COMMAND ; 
 size_t ATA_CONTROL ; 
 size_t ATA_COUNT ; 
 size_t ATA_CYL_LSB ; 
 size_t ATA_CYL_MSB ; 
 size_t ATA_DATA ; 
 size_t ATA_DRIVE ; 
 size_t ATA_ERROR ; 
 size_t ATA_FEATURE ; 
 int /*<<< orphan*/  ATA_KNOWN_PRESENCE ; 
 int ATA_MAX_RES ; 
 int /*<<< orphan*/  ATA_NO_SLAVE ; 
 size_t ATA_SECTOR ; 
 size_t ATA_STATUS ; 
 int /*<<< orphan*/  ATA_USE_16BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct ata_pci_controller *ctrl;
	struct ata_channel *ch;
	int i;

	ctrl = FUNC5(FUNC4(dev));
	ch = FUNC5(dev);
	for (i = ATA_DATA; i < ATA_MAX_RES; i++)
		ch->r_io[i].res = ctrl->r_res1;

	FUNC3(ctrl->r_res1, 0x24, 0x80);
	FUNC0(100);
	FUNC3(ctrl->r_res1, 0x24, 0xc0);
	FUNC0(100);


	/* Write TIME_OFF/ON/1/2W */
	FUNC2(ctrl->r_res1, 0x00, 3);
	FUNC2(ctrl->r_res1, 0x01, 3);
	FUNC2(ctrl->r_res1, 0x02, (25 + 15) / 15);
	FUNC2(ctrl->r_res1, 0x03, (70 + 15) / 15);

	/* Write TIME_2R/AX/RDX/4 */
	FUNC2(ctrl->r_res1, 0x04, (70 + 15) / 15);
	FUNC2(ctrl->r_res1, 0x05, (50 + 15) / 15 + 2);
	FUNC2(ctrl->r_res1, 0x06, 1);
	FUNC2(ctrl->r_res1, 0x07, (10 + 15) / 15);

	/* Write TIME_9 ; the rest of timing registers is irrelevant for PIO */
	FUNC2(ctrl->r_res1, 0x08, (10 + 15) / 15);

	FUNC3(ctrl->r_res1, 0x24, 0xc1);
	FUNC0(30000);

	/* setup ATA registers */
	ch->r_io[ATA_DATA   ].offset = 0xa0;
	ch->r_io[ATA_FEATURE].offset = 0xa4;
	ch->r_io[ATA_ERROR  ].offset = 0xa4;
	ch->r_io[ATA_COUNT  ].offset = 0xa8;
	ch->r_io[ATA_SECTOR ].offset = 0xac;
	ch->r_io[ATA_CYL_LSB].offset = 0xb0;
	ch->r_io[ATA_CYL_MSB].offset = 0xb4;
	ch->r_io[ATA_DRIVE  ].offset = 0xb8;
	ch->r_io[ATA_COMMAND].offset = 0xbc;

	ch->r_io[ATA_STATUS ].offset = 0xbc;
	ch->r_io[ATA_ALTSTAT].offset = 0xd8;
	ch->r_io[ATA_CONTROL].offset = 0xd8;

	FUNC1(dev);

	ch->flags |= ATA_NO_SLAVE;
	ch->flags |= ATA_USE_16BIT;
	ch->flags |= ATA_CHECKS_CABLE;
	ch->flags |= ATA_KNOWN_PRESENCE;

	/* Clear pending interrupts. */
	FUNC3(ctrl->r_res1, 0x28, 0xf8);
	/* Enable all, but Idle interrupts. */
	FUNC3(ctrl->r_res1, 0x2c, 0x88);

	return 0;
}