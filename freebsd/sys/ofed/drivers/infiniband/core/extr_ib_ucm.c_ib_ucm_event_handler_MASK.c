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
struct TYPE_3__ {int /*<<< orphan*/  event; int /*<<< orphan*/  id; int /*<<< orphan*/  uid; } ;
struct ib_ucm_event {int /*<<< orphan*/  ctx_list; int /*<<< orphan*/  file_list; TYPE_1__ resp; struct ib_cm_id* cm_id; struct ib_ucm_context* ctx; } ;
struct ib_ucm_context {TYPE_2__* file; int /*<<< orphan*/  events; int /*<<< orphan*/  id; int /*<<< orphan*/  uid; } ;
struct ib_cm_id {struct ib_ucm_context* context; } ;
struct ib_cm_event {int /*<<< orphan*/  event; } ;
struct TYPE_4__ {int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ib_cm_event*,struct ib_ucm_event*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_ucm_event*) ; 
 struct ib_ucm_event* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ib_cm_id *cm_id,
				struct ib_cm_event *event)
{
	struct ib_ucm_event *uevent;
	struct ib_ucm_context *ctx;
	int result = 0;

	ctx = cm_id->context;

	uevent = FUNC3(sizeof *uevent, GFP_KERNEL);
	if (!uevent)
		goto err1;

	uevent->ctx = ctx;
	uevent->cm_id = cm_id;
	uevent->resp.uid = ctx->uid;
	uevent->resp.id = ctx->id;
	uevent->resp.event = event->event;

	result = FUNC0(event, uevent);
	if (result)
		goto err2;

	FUNC5(&ctx->file->file_mutex);
	FUNC4(&uevent->file_list, &ctx->file->events);
	FUNC4(&uevent->ctx_list, &ctx->events);
	FUNC7(&ctx->file->poll_wait);
	FUNC6(&ctx->file->file_mutex);
	return 0;

err2:
	FUNC2(uevent);
err1:
	/* Destroy new cm_id's */
	return FUNC1(event->event);
}