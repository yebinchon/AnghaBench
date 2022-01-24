#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iscsi_session {int is_reconnecting; int is_terminating; int /*<<< orphan*/  is_lock; int /*<<< orphan*/  is_maintenance_cv; int /*<<< orphan*/  is_maxcmdsn; int /*<<< orphan*/  is_cmdsn; int /*<<< orphan*/  is_postponed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_session*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct iscsi_session *is = arg;

	FUNC0(is);
	for (;;) {
		if (is->is_reconnecting == false &&
		    is->is_terminating == false &&
		    (FUNC3(&is->is_postponed) ||
		     FUNC2(is->is_cmdsn, is->is_maxcmdsn)))
			FUNC4(&is->is_maintenance_cv, &is->is_lock);

		/* Terminate supersedes reconnect. */
		if (is->is_terminating) {
			FUNC1(is);
			FUNC6(is);
			FUNC8();
			return;
		}

		if (is->is_reconnecting) {
			FUNC1(is);
			FUNC5(is);
			FUNC0(is);
			continue;
		}

		FUNC7(is);
	}
	FUNC1(is);
}