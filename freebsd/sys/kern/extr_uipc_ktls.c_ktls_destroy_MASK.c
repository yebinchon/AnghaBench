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
struct rm_priotracker {int dummy; } ;
struct ktls_session {TYPE_1__* be; } ;
struct TYPE_2__ {int /*<<< orphan*/  use_count; } ;

/* Variables and functions */
 scalar_t__ ktls_allow_unload ; 
 int /*<<< orphan*/  ktls_backends_lock ; 
 int /*<<< orphan*/  FUNC0 (struct ktls_session*) ; 
 int /*<<< orphan*/  ktls_session_zone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ktls_session*) ; 

void
FUNC4(struct ktls_session *tls)
{
	struct rm_priotracker prio;

	FUNC0(tls);
	if (tls->be != NULL && ktls_allow_unload) {
		FUNC1(&ktls_backends_lock, &prio);
		tls->be->use_count--;
		FUNC2(&ktls_backends_lock, &prio);
	}
	FUNC3(ktls_session_zone, tls);
}