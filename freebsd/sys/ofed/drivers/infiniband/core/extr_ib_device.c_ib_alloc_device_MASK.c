#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * class; int /*<<< orphan*/ * parent; } ;
struct ib_device {int /*<<< orphan*/  port_list; int /*<<< orphan*/  client_data_list; int /*<<< orphan*/  client_data_lock; int /*<<< orphan*/  event_handler_lock; int /*<<< orphan*/  event_handler_list; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  ib_class ; 
 struct ib_device* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  linux_root_device ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct ib_device *FUNC6(size_t size)
{
	struct ib_device *device;

	if (FUNC1(size < sizeof(struct ib_device)))
		return NULL;

	device = FUNC4(size, GFP_KERNEL);
	if (!device)
		return NULL;

	device->dev.parent = &linux_root_device;
	device->dev.class = &ib_class;
	FUNC3(&device->dev);

	FUNC2(&device->dev, device);

	FUNC0(&device->event_handler_list);
	FUNC5(&device->event_handler_lock);
	FUNC5(&device->client_data_lock);
	FUNC0(&device->client_data_list);
	FUNC0(&device->port_list);

	return device;
}