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
struct audit_pipe_preselect {int /*<<< orphan*/  app_mask; } ;
struct audit_pipe {int dummy; } ;
typedef  int /*<<< orphan*/  au_mask_t ;
typedef  int /*<<< orphan*/  au_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_pipe*) ; 
 int ENOENT ; 
 struct audit_pipe_preselect* FUNC2 (struct audit_pipe*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct audit_pipe *ap, au_id_t auid,
    au_mask_t *maskp)
{
	struct audit_pipe_preselect *app;
	int error;

	FUNC0(ap);
	app = FUNC2(ap, auid);
	if (app != NULL) {
		*maskp = app->app_mask;
		error = 0;
	} else
		error = ENOENT;
	FUNC1(ap);
	return (error);
}