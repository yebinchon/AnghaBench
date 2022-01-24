#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct auth {TYPE_2__* a_auth_group; int /*<<< orphan*/  a_user; int /*<<< orphan*/ * a_mutual_secret; int /*<<< orphan*/ * a_secret; } ;
struct TYPE_4__ {TYPE_1__* ag_target; int /*<<< orphan*/ * ag_name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * t_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct auth *auth)
{
	size_t len;

	len = FUNC1(auth->a_secret);
	if (len > 16) {
		if (auth->a_auth_group->ag_name != NULL)
			FUNC0("secret for user \"%s\", auth-group \"%s\", "
			    "is too long; it should be at most 16 characters "
			    "long", auth->a_user, auth->a_auth_group->ag_name);
		else
			FUNC0("secret for user \"%s\", target \"%s\", "
			    "is too long; it should be at most 16 characters "
			    "long", auth->a_user,
			    auth->a_auth_group->ag_target->t_name);
	}
	if (len < 12) {
		if (auth->a_auth_group->ag_name != NULL)
			FUNC0("secret for user \"%s\", auth-group \"%s\", "
			    "is too short; it should be at least 12 characters "
			    "long", auth->a_user,
			    auth->a_auth_group->ag_name);
		else
			FUNC0("secret for user \"%s\", target \"%s\", "
			    "is too short; it should be at least 12 characters "
			    "long", auth->a_user,
			    auth->a_auth_group->ag_target->t_name);
	}

	if (auth->a_mutual_secret != NULL) {
		len = FUNC1(auth->a_mutual_secret);
		if (len > 16) {
			if (auth->a_auth_group->ag_name != NULL)
				FUNC0("mutual secret for user \"%s\", "
				    "auth-group \"%s\", is too long; it should "
				    "be at most 16 characters long",
				    auth->a_user, auth->a_auth_group->ag_name);
			else
				FUNC0("mutual secret for user \"%s\", "
				    "target \"%s\", is too long; it should "
				    "be at most 16 characters long",
				    auth->a_user,
				    auth->a_auth_group->ag_target->t_name);
		}
		if (len < 12) {
			if (auth->a_auth_group->ag_name != NULL)
				FUNC0("mutual secret for user \"%s\", "
				    "auth-group \"%s\", is too short; it "
				    "should be at least 12 characters long",
				    auth->a_user, auth->a_auth_group->ag_name);
			else
				FUNC0("mutual secret for user \"%s\", "
				    "target \"%s\", is too short; it should be "
				    "at least 12 characters long",
				    auth->a_user,
				    auth->a_auth_group->ag_target->t_name);
		}
	}
}