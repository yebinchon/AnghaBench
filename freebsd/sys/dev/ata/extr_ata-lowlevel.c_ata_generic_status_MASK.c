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
struct ata_channel {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_ALTSTAT ; 
 int FUNC0 (struct ata_channel*,int /*<<< orphan*/ ) ; 
 int ATA_S_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ata_channel* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
    struct ata_channel *ch = FUNC2(dev);

    if (FUNC0(ch, ATA_ALTSTAT) & ATA_S_BUSY) {
	FUNC1(100);
	if (FUNC0(ch, ATA_ALTSTAT) & ATA_S_BUSY)
	    return 0;
    }
    return 1;
}