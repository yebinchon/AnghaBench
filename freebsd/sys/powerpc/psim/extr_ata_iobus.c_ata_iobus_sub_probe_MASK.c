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
struct ata_channel {int flags; scalar_t__ unit; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATA_NO_SLAVE ; 
 int ATA_USE_16BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct ata_channel *ch = FUNC2(dev);

	/* Only a single unit per controller thus far */
	ch->unit = 0;
	ch->flags = (ATA_USE_16BIT|ATA_NO_SLAVE);
	FUNC0(dev);

	return FUNC1(dev);
}