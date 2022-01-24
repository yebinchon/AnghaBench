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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, int target)
{
	device_t parent = FUNC0(dev);
	struct ata_channel *ch = FUNC1(dev);

	if (ch->unit == 0) {
		if (FUNC2(parent, 0xa0 + target, 1) & 0x10)
			return (2);
		else
			return (1);
	}
	return (0);
}