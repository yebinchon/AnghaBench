#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
struct auth_group {int /*<<< orphan*/  ag_name; } ;
struct auth {int dummy; } ;

/* Variables and functions */
 scalar_t__ UCL_STRING ; 
 struct auth* FUNC0 (struct auth_group*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__ const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 

__attribute__((used)) static int
FUNC4(struct auth_group *auth_group, const ucl_object_t *obj)
{
	const struct auth *ca;
	const ucl_object_t *user, *secret;

	user = FUNC2(obj, "user");
	if (!user || user->type != UCL_STRING) {
		FUNC1("chap section in auth-group \"%s\" is missing "
		    "\"user\" string key", auth_group->ag_name);
		return (1);
	}

	secret = FUNC2(obj, "secret");
	if (!secret || secret->type != UCL_STRING) {
		FUNC1("chap section in auth-group \"%s\" is missing "
		    "\"secret\" string key", auth_group->ag_name);
	}

	ca = FUNC0(auth_group,
	    FUNC3(user),
	    FUNC3(secret));

	if (ca == NULL)
		return (1);

	return (0);
}