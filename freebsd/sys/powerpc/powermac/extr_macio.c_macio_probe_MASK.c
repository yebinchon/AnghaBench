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
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ mpd_devid; int /*<<< orphan*/ * mpd_desc; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* macio_pci_devlist ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
        int i;
        u_int32_t devid;
	
        devid = FUNC1(dev);
        for (i = 0; macio_pci_devlist[i].mpd_desc != NULL; i++) {
                if (devid == macio_pci_devlist[i].mpd_devid) {
                        FUNC0(dev, macio_pci_devlist[i].mpd_desc);
                        return (0);
                }
        }
	
        return (ENXIO);	
}