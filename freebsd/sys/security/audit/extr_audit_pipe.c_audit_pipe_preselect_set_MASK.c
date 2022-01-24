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
struct audit_pipe_preselect {int /*<<< orphan*/  app_mask; int /*<<< orphan*/  app_auid; } ;
struct audit_pipe {int /*<<< orphan*/  ap_preselect_list; } ;
typedef  int /*<<< orphan*/  au_mask_t ;
typedef  int /*<<< orphan*/  au_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_pipe*) ; 
 int /*<<< orphan*/  M_AUDIT_PIPE_PRESELECT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct audit_pipe_preselect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  app_list ; 
 struct audit_pipe_preselect* FUNC3 (struct audit_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_pipe_preselect*,int /*<<< orphan*/ ) ; 
 struct audit_pipe_preselect* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct audit_pipe *ap, au_id_t auid, au_mask_t mask)
{
	struct audit_pipe_preselect *app, *app_new;

	/*
	 * Pessimistically assume that the auid doesn't already have a mask
	 * set, and allocate.  We will free it if it is unneeded.
	 */
	app_new = FUNC5(sizeof(*app_new), M_AUDIT_PIPE_PRESELECT, M_WAITOK);
	FUNC0(ap);
	app = FUNC3(ap, auid);
	if (app == NULL) {
		app = app_new;
		app_new = NULL;
		app->app_auid = auid;
		FUNC2(&ap->ap_preselect_list, app, app_list);
	}
	app->app_mask = mask;
	FUNC1(ap);
	if (app_new != NULL)
		FUNC4(app_new, M_AUDIT_PIPE_PRESELECT);
}