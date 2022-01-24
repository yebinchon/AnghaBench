#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* device_t ;
typedef  TYPE_2__* devclass_t ;
struct TYPE_11__ {int maxunit; scalar_t__* devices; } ;
struct TYPE_10__ {int unit; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*) ; 

int
FUNC4(device_t dev, int unit)
{
	devclass_t dc;
	int err;

	dc = FUNC3(dev);
	if (unit < dc->maxunit && dc->devices[unit])
		return (EBUSY);
	err = FUNC2(dc, dev);
	if (err)
		return (err);
	dev->unit = unit;
	err = FUNC1(dc, dev);
	if (err)
		return (err);

	FUNC0();
	return (0);
}