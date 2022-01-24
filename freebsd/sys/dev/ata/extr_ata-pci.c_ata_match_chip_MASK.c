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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct ata_chip_id {scalar_t__ chipid; scalar_t__ chiprev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

const struct ata_chip_id *
FUNC2(device_t dev, const struct ata_chip_id *index)
{
    uint32_t devid;
    uint8_t revid;

    devid = FUNC0(dev);
    revid = FUNC1(dev);
    while (index->chipid != 0) {
	if (devid == index->chipid && revid >= index->chiprev)
	    return (index);
	index++;
    }
    return (NULL);
}