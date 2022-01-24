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
struct sysctl_req {int dummy; } ;
struct sysctl_oid {int oid_kind; int (* oid_handler ) (struct sysctl_oid*,void*,int /*<<< orphan*/ ,struct sysctl_req*) ;int /*<<< orphan*/  oid_running; } ;
struct rm_priotracker {int dummy; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int CTLFLAG_DYING ; 
 int CTLFLAG_DYN ; 
 int CTLFLAG_MPSAFE ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC2 (struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  _debug_fail_point ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sysctl_oid*,void*,int /*<<< orphan*/ ,struct sysctl_req*) ; 
 int /*<<< orphan*/  sysctl_running ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct sysctl_oid *oid, void *arg1, intmax_t arg2,
    struct sysctl_req *req, struct rm_priotracker *tracker)
{
	int error;

	if (oid->oid_kind & CTLFLAG_DYN)
		FUNC5(&oid->oid_running, 1);

	if (tracker != NULL)
		FUNC2(tracker);
	else
		FUNC4();

	if (!(oid->oid_kind & CTLFLAG_MPSAFE))
		FUNC7(&Giant);
	error = oid->oid_handler(oid, arg1, arg2, req);
	if (!(oid->oid_kind & CTLFLAG_MPSAFE))
		FUNC8(&Giant);

	FUNC0(_debug_fail_point, sysctl_running, error);

	if (tracker != NULL)
		FUNC1(tracker);
	else
		FUNC3();

	if (oid->oid_kind & CTLFLAG_DYN) {
		if (FUNC6(&oid->oid_running, -1) == 1 &&
		    (oid->oid_kind & CTLFLAG_DYING) != 0)
			FUNC10(&oid->oid_running);
	}

	return (error);
}