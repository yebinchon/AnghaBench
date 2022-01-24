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
struct auth {struct auth* a_mutual_secret; struct auth* a_mutual_user; struct auth* a_secret; struct auth* a_user; TYPE_1__* a_auth_group; } ;
struct TYPE_2__ {int /*<<< orphan*/  ag_auths; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct auth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  a_next ; 
 int /*<<< orphan*/  FUNC1 (struct auth*) ; 

__attribute__((used)) static void
FUNC2(struct auth *auth)
{
	FUNC0(&auth->a_auth_group->ag_auths, auth, a_next);

	FUNC1(auth->a_user);
	FUNC1(auth->a_secret);
	FUNC1(auth->a_mutual_user);
	FUNC1(auth->a_mutual_secret);
	FUNC1(auth);
}