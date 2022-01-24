#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct xs_stored_msg* vec; int /*<<< orphan*/  vec_size; TYPE_4__* handle; } ;
struct TYPE_6__ {TYPE_1__ watch; } ;
struct xs_stored_msg {TYPE_2__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* callback ) (TYPE_4__*,char const**,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  xenwatch_mutex; int /*<<< orphan*/  watch_events_lock; int /*<<< orphan*/  watch_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_XENSTORE ; 
 int PCATCH ; 
 int PWAIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct xs_stored_msg* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct xs_stored_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xs_stored_msg*,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_3__ xs ; 

__attribute__((used)) static void
FUNC10(void *unused)
{
	struct xs_stored_msg *msg;

	for (;;) {

		FUNC4(&xs.watch_events_lock);
		while (FUNC0(&xs.watch_events))
			FUNC5(&xs.watch_events,
			    &xs.watch_events_lock,
			    PWAIT | PCATCH, "waitev", hz/10);

		FUNC6(&xs.watch_events_lock);
		FUNC8(&xs.xenwatch_mutex);

		FUNC4(&xs.watch_events_lock);
		msg = FUNC1(&xs.watch_events);
		if (msg)
			FUNC2(&xs.watch_events, msg, list);
		FUNC6(&xs.watch_events_lock);

		if (msg != NULL) {
			/*
			 * XXX There are messages coming in with a NULL
			 * XXX callback.  This deserves further investigation;
			 * XXX the workaround here simply prevents the kernel
			 * XXX from panic'ing on startup.
			 */
			if (msg->u.watch.handle->callback != NULL)
				msg->u.watch.handle->callback(
					msg->u.watch.handle,
					(const char **)msg->u.watch.vec,
					msg->u.watch.vec_size);
			FUNC3(msg->u.watch.vec, M_XENSTORE);
			FUNC3(msg, M_XENSTORE);
		}

		FUNC9(&xs.xenwatch_mutex);
	}
}