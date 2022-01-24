#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  driverlink_t ;
typedef  TYPE_2__* device_t ;
typedef  TYPE_3__* devclass_t ;
struct TYPE_9__ {int /*<<< orphan*/  drivers; } ;
struct TYPE_8__ {TYPE_1__* devclass; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static driverlink_t
FUNC2(devclass_t dc, device_t dev)
{
	if (dev->devclass)
		return (FUNC1(dc, dev->devclass->name));
	return (FUNC0(&dc->drivers));
}