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
struct ata_channel {int flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATA_NO_SLAVE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct ata_channel* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct ata_channel *ch = FUNC2(dev);

	FUNC1(dev, 0);
	if ((ch->flags & ATA_NO_SLAVE) == 0)
		FUNC1(dev, 1);

	return FUNC0(dev);
}