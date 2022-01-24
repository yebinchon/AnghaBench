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
struct auth_group {int /*<<< orphan*/  ag_auths; } ;
struct auth {struct auth_group* a_auth_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct auth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  a_next ; 
 struct auth* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static struct auth *
FUNC3(struct auth_group *ag)
{
	struct auth *auth;

	auth = FUNC1(1, sizeof(*auth));
	if (auth == NULL)
		FUNC2(1, "calloc");
	auth->a_auth_group = ag;
	FUNC0(&ag->ag_auths, auth, a_next);
	return (auth);
}