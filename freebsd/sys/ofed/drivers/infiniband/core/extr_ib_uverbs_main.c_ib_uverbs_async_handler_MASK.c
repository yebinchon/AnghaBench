#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct list_head {int dummy; } ;
struct ib_uverbs_file {TYPE_3__* async_file; } ;
struct TYPE_4__ {scalar_t__ reserved; void* event_type; void* element; } ;
struct TYPE_5__ {TYPE_1__ async; } ;
struct ib_uverbs_event {int /*<<< orphan*/  obj_list; int /*<<< orphan*/  list; int /*<<< orphan*/ * counter; TYPE_2__ desc; } ;
typedef  void* __u64 ;
struct TYPE_6__ {int /*<<< orphan*/  async_queue; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  lock; struct list_head event_list; scalar_t__ is_closed; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ib_uverbs_event* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ib_uverbs_file *file,
				    __u64 element, __u64 event,
				    struct list_head *obj_list,
				    u32 *counter)
{
	struct ib_uverbs_event *entry;
	unsigned long flags;

	FUNC3(&file->async_file->lock, flags);
	if (file->async_file->is_closed) {
		FUNC4(&file->async_file->lock, flags);
		return;
	}

	entry = FUNC1(sizeof *entry, GFP_ATOMIC);
	if (!entry) {
		FUNC4(&file->async_file->lock, flags);
		return;
	}

	entry->desc.async.element    = element;
	entry->desc.async.event_type = event;
	entry->desc.async.reserved   = 0;
	entry->counter               = counter;

	FUNC2(&entry->list, &file->async_file->event_list);
	if (obj_list)
		FUNC2(&entry->obj_list, obj_list);
	FUNC4(&file->async_file->lock, flags);

	FUNC5(&file->async_file->poll_wait);
	FUNC0(&file->async_file->async_queue, SIGIO, POLL_IN);
}