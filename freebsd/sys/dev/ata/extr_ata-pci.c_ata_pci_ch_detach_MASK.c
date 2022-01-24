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
struct ata_channel {TYPE_1__* r_io; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  res; } ;

/* Variables and functions */
 size_t ATA_CONTROL ; 
 int /*<<< orphan*/  ATA_CTLADDR_RID ; 
 size_t ATA_IDX_ADDR ; 
 int /*<<< orphan*/  ATA_IOADDR_RID ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(device_t dev)
{
    struct ata_channel *ch = FUNC2(dev);

    FUNC0(dev);

    FUNC1(dev, SYS_RES_IOPORT, ATA_CTLADDR_RID,
	ch->r_io[ATA_CONTROL].res);
    FUNC1(dev, SYS_RES_IOPORT, ATA_IOADDR_RID,
	ch->r_io[ATA_IDX_ADDR].res);

    return (0);
}