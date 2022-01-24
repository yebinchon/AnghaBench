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
struct userent {struct userent* ge_line; struct userent* ue_netid_line; struct userent* ue_line; } ;
struct groupent {struct groupent* ge_line; struct groupent* ue_netid_line; struct groupent* ue_line; } ;
struct env {int update_trashed; struct userent* sc_group_names_t; struct userent* sc_user_names_t; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct userent*,struct userent*) ; 
 struct userent* FUNC1 (struct userent*) ; 
 int /*<<< orphan*/  FUNC2 (struct userent*) ; 
 int /*<<< orphan*/  group_name_tree ; 
 int /*<<< orphan*/  user_name_tree ; 

void
FUNC3(struct env *env)
{
	struct userent	*ue;
	struct groupent	*ge;

	env->update_trashed = 1;

	while ((ue = FUNC1(env->sc_user_names_t)) != NULL) {
		FUNC0(user_name_tree,
		    env->sc_user_names_t, ue);
		FUNC2(ue->ue_line);
		FUNC2(ue->ue_netid_line);
		FUNC2(ue);
	}
	FUNC2(env->sc_user_names_t);
	env->sc_user_names_t = NULL;
	while ((ge = FUNC1(env->sc_group_names_t))
	    != NULL) {
		FUNC0(group_name_tree,
		    env->sc_group_names_t, ge);
		FUNC2(ge->ge_line);
		FUNC2(ge);
	}
	FUNC2(env->sc_group_names_t);
	env->sc_group_names_t = NULL;
}