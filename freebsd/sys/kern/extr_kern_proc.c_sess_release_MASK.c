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
struct session {int /*<<< orphan*/  s_mtx; int /*<<< orphan*/  s_sid; int /*<<< orphan*/ * s_ttyp; int /*<<< orphan*/  s_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SESSION ; 
 int /*<<< orphan*/  PROC_ID_SESSION ; 
 int /*<<< orphan*/  FUNC0 (struct session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct session*) ; 

void
FUNC6(struct session *s)
{

	if (FUNC3(&s->s_count)) {
		if (s->s_ttyp != NULL) {
			FUNC4(s->s_ttyp);
			FUNC5(s->s_ttyp, s);
		}
		FUNC2(PROC_ID_SESSION, s->s_sid);
		FUNC1(&s->s_mtx);
		FUNC0(s, M_SESSION);
	}
}