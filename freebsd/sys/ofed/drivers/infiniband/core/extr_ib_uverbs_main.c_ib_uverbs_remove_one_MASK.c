#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct ib_uverbs_device {scalar_t__ devnum; int /*<<< orphan*/  kobj; int /*<<< orphan*/  comp; int /*<<< orphan*/  refcount; int /*<<< orphan*/  ib_dev; TYPE_2__ cdev; TYPE_1__* dev; } ;
struct ib_device {scalar_t__ disassociate_ucontext; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 scalar_t__ IB_UVERBS_MAX_DEVICES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_map ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_group ; 
 int /*<<< orphan*/  FUNC5 (struct ib_uverbs_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_uverbs_device*,struct ib_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  overflow_map ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uverbs_class ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ib_device *device, void *client_data)
{
	struct ib_uverbs_device *uverbs_dev = client_data;
	int wait_clients = 1;

	if (!uverbs_dev)
		return;

	FUNC9(&uverbs_dev->dev->kobj, &device_group);
	FUNC3(uverbs_dev->dev, NULL);
	FUNC4(uverbs_class, uverbs_dev->cdev.dev);
	FUNC1(&uverbs_dev->cdev);

	if (uverbs_dev->devnum < IB_UVERBS_MAX_DEVICES)
		FUNC2(uverbs_dev->devnum, dev_map);
	else
		FUNC2(uverbs_dev->devnum - IB_UVERBS_MAX_DEVICES, overflow_map);

	if (device->disassociate_ucontext) {
		/* We disassociate HW resources and immediately return.
		 * Userspace will see a EIO errno for all future access.
		 * Upon returning, ib_device may be freed internally and is not
		 * valid any more.
		 * uverbs_device is still available until all clients close
		 * their files, then the uverbs device ref count will be zero
		 * and its resources will be freed.
		 * Note: At this point no more files can be opened since the
		 * cdev was deleted, however active clients can still issue
		 * commands and close their open files.
		 */
		FUNC8(uverbs_dev->ib_dev, NULL);
		FUNC6(uverbs_dev, device);
		wait_clients = 0;
	}

	if (FUNC0(&uverbs_dev->refcount))
		FUNC5(uverbs_dev);
	if (wait_clients)
		FUNC10(&uverbs_dev->comp);
	FUNC7(&uverbs_dev->kobj);
}