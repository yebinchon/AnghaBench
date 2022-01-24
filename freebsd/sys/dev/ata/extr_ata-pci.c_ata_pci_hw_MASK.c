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
struct ata_channel {TYPE_1__ hw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ata_pci_status ; 
 struct ata_channel* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(device_t dev)
{
    struct ata_channel *ch = FUNC1(dev);

    FUNC0(dev);
    ch->hw.status = ata_pci_status;
}