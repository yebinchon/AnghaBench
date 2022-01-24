#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct auth_group {scalar_t__ ag_type; TYPE_1__* ag_target; int /*<<< orphan*/ * ag_name; } ;
typedef  struct auth {void* a_secret; void* a_user; } const auth ;
struct TYPE_2__ {int /*<<< orphan*/ * t_name; } ;

/* Variables and functions */
 scalar_t__ AG_TYPE_CHAP ; 
 scalar_t__ AG_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct auth const*) ; 
 struct auth const* FUNC1 (struct auth_group*) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

const struct auth *
FUNC4(struct auth_group *ag, const char *user,
    const char *secret)
{
	struct auth *auth;

	if (ag->ag_type == AG_TYPE_UNKNOWN)
		ag->ag_type = AG_TYPE_CHAP;
	if (ag->ag_type != AG_TYPE_CHAP) {
		if (ag->ag_name != NULL)
			FUNC3("cannot mix \"chap\" authentication with "
			    "other types for auth-group \"%s\"", ag->ag_name);
		else
			FUNC3("cannot mix \"chap\" authentication with "
			    "other types for target \"%s\"",
			    ag->ag_target->t_name);
		return (NULL);
	}

	auth = FUNC1(ag);
	auth->a_user = FUNC2(user);
	auth->a_secret = FUNC2(secret);

	FUNC0(auth);

	return (auth);
}