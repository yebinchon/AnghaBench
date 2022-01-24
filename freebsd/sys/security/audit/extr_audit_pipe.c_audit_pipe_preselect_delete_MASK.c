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
typedef  int /*<<< orphan*/  au_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_pipe*) ; 
 int ENOENT ; 
 int /*<<< orphan*/  M_AUDIT_PIPE_PRESELECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct audit_pipe_preselect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  app_list ; 
 struct audit_pipe_preselect* FUNC3 (struct audit_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_pipe_preselect*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct audit_pipe *ap, au_id_t auid)
{
	struct audit_pipe_preselect *app;
	int error;

	FUNC0(ap);
	app = FUNC3(ap, auid);
	if (app != NULL) {
		FUNC2(&ap->ap_preselect_list, app, app_list);
		error = 0;
	} else
		error = ENOENT;
	FUNC1(ap);
	if (app != NULL)
		FUNC4(app, M_AUDIT_PIPE_PRESELECT);
	return (error);
}