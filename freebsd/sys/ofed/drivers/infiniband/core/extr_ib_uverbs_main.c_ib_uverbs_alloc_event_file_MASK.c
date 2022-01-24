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
struct ib_uverbs_file {int /*<<< orphan*/  ref; struct ib_uverbs_event_file* async_file; int /*<<< orphan*/  event_handler; TYPE_1__* device; } ;
struct ib_uverbs_event_file {int is_async; int /*<<< orphan*/  ref; struct ib_uverbs_file* uverbs_file; int /*<<< orphan*/  list; scalar_t__ is_closed; int /*<<< orphan*/ * async_queue; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  event_list; int /*<<< orphan*/  lock; } ;
struct ib_device {int dummy; } ;
struct file {struct ib_uverbs_event_file* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  lists_mutex; int /*<<< orphan*/  uverbs_events_file_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct file* FUNC0 (int) ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_uverbs_event_file*) ; 
 struct file* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ib_uverbs_event_handler ; 
 int /*<<< orphan*/  ib_uverbs_release_event_file ; 
 int /*<<< orphan*/  ib_uverbs_release_file ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ib_uverbs_event_file* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uverbs_event_fops ; 

struct file *FUNC18(struct ib_uverbs_file *uverbs_file,
					struct ib_device	*ib_dev,
					int is_async)
{
	struct ib_uverbs_event_file *ev_file;
	struct file *filp;
	int ret;

	ev_file = FUNC13(sizeof(*ev_file), GFP_KERNEL);
	if (!ev_file)
		return FUNC0(-ENOMEM);

	FUNC11(&ev_file->ref);
	FUNC17(&ev_file->lock);
	FUNC2(&ev_file->event_list);
	FUNC9(&ev_file->poll_wait);
	ev_file->uverbs_file = uverbs_file;
	FUNC10(&ev_file->uverbs_file->ref);
	ev_file->async_queue = NULL;
	ev_file->is_closed   = 0;

	/*
	 * fops_get() can't fail here, because we're coming from a
	 * system call on a uverbs file, which will already have a
	 * module reference.
	 */
	filp = FUNC5(FMODE_READ, FUNC6(&uverbs_event_fops));
	if (FUNC3(filp))
		goto err_put_refs;
	filp->private_data = ev_file;

	FUNC15(&uverbs_file->device->lists_mutex);
	FUNC14(&ev_file->list,
		      &uverbs_file->device->uverbs_events_file_list);
	FUNC16(&uverbs_file->device->lists_mutex);

	if (is_async) {
		FUNC4(uverbs_file->async_file);
		uverbs_file->async_file = ev_file;
		FUNC10(&uverbs_file->async_file->ref);
		FUNC1(&uverbs_file->event_handler,
				      ib_dev,
				      ib_uverbs_event_handler);
		ret = FUNC8(&uverbs_file->event_handler);
		if (ret)
			goto err_put_file;

		/* At that point async file stuff was fully set */
		ev_file->is_async = 1;
	}

	return filp;

err_put_file:
	FUNC7(filp);
	FUNC12(&uverbs_file->async_file->ref, ib_uverbs_release_event_file);
	uverbs_file->async_file = NULL;
	return FUNC0(ret);

err_put_refs:
	FUNC12(&ev_file->uverbs_file->ref, ib_uverbs_release_file);
	FUNC12(&ev_file->ref, ib_uverbs_release_event_file);
	return filp;
}