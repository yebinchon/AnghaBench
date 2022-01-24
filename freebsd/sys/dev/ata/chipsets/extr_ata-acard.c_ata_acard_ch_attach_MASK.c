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
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
struct ata_channel {int /*<<< orphan*/  flags; TYPE_1__ hw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_NO_ATAPI_DMA ; 
 int ENXIO ; 
 int /*<<< orphan*/  ata_acard_status ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
    struct ata_channel *ch = FUNC1(dev);

    /* setup the usual register normal pci style */
    if (FUNC0(dev))
	return ENXIO;

    ch->hw.status = ata_acard_status;
    ch->flags |= ATA_NO_ATAPI_DMA;
    return 0;
}