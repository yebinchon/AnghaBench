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
struct env {int /*<<< orphan*/ * sc_group_names_t; int /*<<< orphan*/ * sc_user_names_t; scalar_t__ sc_group_line_len; scalar_t__ sc_user_line_len; scalar_t__ update_trashed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(struct env *env)
{
	env->update_trashed = 0;

	FUNC3("starting directory update");
	env->sc_user_line_len = 0;
	env->sc_group_line_len = 0;
	if ((env->sc_user_names_t = FUNC1(1,
	    sizeof(*env->sc_user_names_t))) == NULL ||
	    (env->sc_group_names_t = FUNC1(1,
	    sizeof(*env->sc_group_names_t))) == NULL)
		FUNC2(NULL);
	FUNC0(env->sc_user_names_t);
	FUNC0(env->sc_group_names_t);
}