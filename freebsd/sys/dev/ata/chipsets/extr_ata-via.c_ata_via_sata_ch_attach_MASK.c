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
struct TYPE_2__ {int /*<<< orphan*/  pm_write; int /*<<< orphan*/  pm_read; int /*<<< orphan*/  status; } ;
struct ata_channel {scalar_t__ unit; int /*<<< orphan*/  flags; TYPE_1__ hw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_PERIODIC_POLL ; 
 int /*<<< orphan*/  ATA_SATA ; 
 int /*<<< orphan*/  ATA_SERROR ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_channel*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ata_via_sata_scr_read ; 
 int /*<<< orphan*/  ata_via_sata_scr_write ; 
 int /*<<< orphan*/  ata_via_sata_status ; 
 struct ata_channel* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct ata_channel *ch = FUNC2(dev);

	if (FUNC0(dev))
		return ENXIO;
	if (ch->unit == 0) {
		ch->hw.status = ata_via_sata_status;
		ch->hw.pm_read = ata_via_sata_scr_read;
		ch->hw.pm_write = ata_via_sata_scr_write;
		ch->flags |= ATA_PERIODIC_POLL;
		ch->flags |= ATA_SATA;
		FUNC1(ch, 0, ATA_SERROR, 0xffffffff);
		FUNC1(ch, 1, ATA_SERROR, 0xffffffff);
	}
	return (0);
}