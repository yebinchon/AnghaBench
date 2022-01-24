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
struct inode {int dummy; } ;
struct ib_uverbs_file {int is_closed; int /*<<< orphan*/  ref; TYPE_1__* async_file; struct ib_uverbs_device* device; int /*<<< orphan*/  list; int /*<<< orphan*/  cleanup_mutex; int /*<<< orphan*/ * ucontext; } ;
struct ib_uverbs_device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  lists_mutex; } ;
struct file {struct ib_uverbs_file* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_uverbs_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ib_uverbs_release_event_file ; 
 int /*<<< orphan*/  ib_uverbs_release_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filp)
{
	struct ib_uverbs_file *file = filp->private_data;
	struct ib_uverbs_device *dev = file->device;

	FUNC4(&file->cleanup_mutex);
	if (file->ucontext) {
		FUNC0(file, file->ucontext);
		file->ucontext = NULL;
	}
	FUNC5(&file->cleanup_mutex);

	FUNC4(&file->device->lists_mutex);
	if (!file->is_closed) {
		FUNC3(&file->list);
		file->is_closed = 1;
	}
	FUNC5(&file->device->lists_mutex);

	if (file->async_file)
		FUNC2(&file->async_file->ref, ib_uverbs_release_event_file);

	FUNC2(&file->ref, ib_uverbs_release_file);
	FUNC1(&dev->kobj);

	return 0;
}