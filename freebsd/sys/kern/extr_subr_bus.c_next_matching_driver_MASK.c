#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* driverlink_t ;
typedef  TYPE_4__* device_t ;
typedef  int /*<<< orphan*/  devclass_t ;
struct TYPE_13__ {TYPE_1__* devclass; } ;
struct TYPE_12__ {TYPE_2__* driver; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static driverlink_t
FUNC2(devclass_t dc, device_t dev, driverlink_t last)
{
	if (dev->devclass) {
		driverlink_t dl;
		for (dl = FUNC0(last, link); dl; dl = FUNC0(dl, link))
			if (!FUNC1(dev->devclass->name, dl->driver->name))
				return (dl);
		return (NULL);
	}
	return (FUNC0(last, link));
}