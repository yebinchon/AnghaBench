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
typedef  int uint32_t ;
struct ahci_channel {int /*<<< orphan*/  dev; int /*<<< orphan*/  r_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_P_TFD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ATA_S_BUSY ; 
 int ATA_S_DRQ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EBUSY ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int
FUNC4(struct ahci_channel *ch, int t, int t0)
{
	int timeout = 0;
	uint32_t val;

	while ((val = FUNC0(ch->r_mem, AHCI_P_TFD)) &
	    (ATA_S_BUSY | ATA_S_DRQ)) {
		if (timeout > t) {
			if (t != 0) {
				FUNC3(ch->dev,
				    "AHCI reset: device not ready after %dms "
				    "(tfd = %08x)\n",
				    FUNC2(t, 0) + t0, val);
			}
			return (EBUSY);
		}
		FUNC1(1000);
		timeout++;
	}
	if (bootverbose)
		FUNC3(ch->dev, "AHCI reset: device ready after %dms\n",
		    timeout + t0);
	return (0);
}