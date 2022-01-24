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
struct ata_channel {scalar_t__ unit; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATA_WDMA2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int target, int mode)
{
	device_t parent = FUNC0(dev);
	struct ata_channel *ch = FUNC1(dev);

	mode = FUNC2(mode, ATA_WDMA2);

	/* XXX SOS missing WDMA0+1 + PIO modes */
	if (mode == ATA_WDMA2) { 
		FUNC3(parent, ch->unit ? 0x4e : 0x4c, 0x2020, 2);
	}
	/* we could set PIO mode timings, but we assume the BIOS did that */
	return (mode);
}