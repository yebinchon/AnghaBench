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
typedef  struct auth_name {int /*<<< orphan*/  an_initator_name; struct auth_group* an_auth_group; } const auth_name ;
struct auth_group {int /*<<< orphan*/  ag_names; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct auth_name const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  an_next ; 
 struct auth_name const* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

const struct auth_name *
FUNC4(struct auth_group *ag, const char *name)
{
	struct auth_name *an;

	an = FUNC1(1, sizeof(*an));
	if (an == NULL)
		FUNC3(1, "calloc");
	an->an_auth_group = ag;
	an->an_initator_name = FUNC2(name);
	FUNC0(&ag->ag_names, an, an_next);
	return (an);
}