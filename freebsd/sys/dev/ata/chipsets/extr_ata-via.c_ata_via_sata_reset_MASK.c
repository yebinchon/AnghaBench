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
typedef  int uint8_t ;
struct ata_channel {scalar_t__ unit; scalar_t__ devices; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATA_DRIVE ; 
 int ATA_D_IBM ; 
 int ATA_D_LBA ; 
 int FUNC1 (struct ata_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ATA_MASTER ; 
 int /*<<< orphan*/  ATA_SLAVE ; 
 int /*<<< orphan*/  ATA_STATUS ; 
 int ATA_S_BUSY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(device_t dev)
{
	struct ata_channel *ch = FUNC6(dev);
	int devs, count;
	uint8_t status;

	if (ch->unit == 0) {
		devs = FUNC5(dev, 0, 0);
		count = 0;
		do {
			FUNC2(ch, ATA_DRIVE, ATA_D_IBM | ATA_D_LBA |
			    FUNC0(ATA_MASTER));
			FUNC3(1000);
			status = FUNC1(ch, ATA_STATUS);
			count++;
		} while (status & ATA_S_BUSY && count < 100);

		devs += FUNC5(dev, 1, 0);
		count = 0;
		do {
			FUNC2(ch, ATA_DRIVE, ATA_D_IBM | ATA_D_LBA |
			    FUNC0(ATA_SLAVE));
			FUNC3(1000);
			status = FUNC1(ch, ATA_STATUS);
			count++;
		} while (status & ATA_S_BUSY && count < 100);
	} else
		devs = 1;
	if (devs)
		FUNC4(dev);
	else
		ch->devices = 0;
}