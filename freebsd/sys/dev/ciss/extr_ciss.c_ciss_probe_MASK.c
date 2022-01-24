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
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ciss_vendor_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
    int		i;

    i = FUNC0(dev);
    if (i != -1) {
	FUNC1(dev, ciss_vendor_data[i].desc);
	return(BUS_PROBE_DEFAULT);
    }
    return(ENOENT);
}