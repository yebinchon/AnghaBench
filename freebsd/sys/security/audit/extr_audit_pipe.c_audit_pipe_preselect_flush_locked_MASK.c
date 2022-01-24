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
struct audit_pipe_preselect {int dummy; } ;
struct audit_pipe {int /*<<< orphan*/  ap_preselect_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_pipe*) ; 
 int /*<<< orphan*/  M_AUDIT_PIPE_PRESELECT ; 
 struct audit_pipe_preselect* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct audit_pipe_preselect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  app_list ; 
 int /*<<< orphan*/  FUNC3 (struct audit_pipe_preselect*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct audit_pipe *ap)
{
	struct audit_pipe_preselect *app;

	FUNC0(ap);

	while ((app = FUNC1(&ap->ap_preselect_list)) != NULL) {
		FUNC2(&ap->ap_preselect_list, app, app_list);
		FUNC3(app, M_AUDIT_PIPE_PRESELECT);
	}
}