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
struct g_class {int dummy; } ;

/* Variables and functions */
 scalar_t__ GKT_DIE ; 
 scalar_t__ GKT_RUN ; 
 int /*<<< orphan*/  PRIBIO ; 
 scalar_t__ g_multipath_kt_state ; 
 int /*<<< orphan*/  gmtbq_mtx ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC4(struct g_class *mp)
{
	if (g_multipath_kt_state == GKT_RUN) {
		FUNC1(&gmtbq_mtx);
		g_multipath_kt_state = GKT_DIE;
		FUNC3(&g_multipath_kt_state);
		FUNC0(&g_multipath_kt_state, &gmtbq_mtx, PRIBIO,
		    "gmp:fini", 0);
		FUNC2(&gmtbq_mtx);
	}
}