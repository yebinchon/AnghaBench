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
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ GKT_RUN ; 
 int /*<<< orphan*/  PRIBIO ; 
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 scalar_t__ g_multipath_kt_state ; 
 int /*<<< orphan*/  gmtbq ; 
 int /*<<< orphan*/  gmtbq_mtx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{

	g_multipath_kt_state = GKT_RUN;
	FUNC4(&gmtbq_mtx);
	while (g_multipath_kt_state == GKT_RUN) {
		for (;;) {
			struct bio *bp;

			bp = FUNC0(&gmtbq);
			if (bp == NULL)
				break;
			FUNC5(&gmtbq_mtx);
			FUNC1(bp);
			FUNC4(&gmtbq_mtx);
		}
		if (g_multipath_kt_state != GKT_RUN)
			break;
		FUNC3(&g_multipath_kt_state, &gmtbq_mtx, PRIBIO,
		    "gkt:wait", 0);
	}
	FUNC5(&gmtbq_mtx);
	FUNC6(&g_multipath_kt_state);
	FUNC2(0);
}