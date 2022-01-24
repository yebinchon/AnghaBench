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
struct TYPE_2__ {scalar_t__ subvendor; scalar_t__ subdevice; int /*<<< orphan*/ * desc; } ;

/* Variables and functions */
 TYPE_1__* ciss_vendor_data ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
    int 	i;

    for (i = 0; ciss_vendor_data[i].desc != NULL; i++)
	if ((FUNC1(dev) == ciss_vendor_data[i].subvendor) &&
	    (FUNC0(dev) == ciss_vendor_data[i].subdevice)) {
	    return(i);
	}
    return(-1);
}