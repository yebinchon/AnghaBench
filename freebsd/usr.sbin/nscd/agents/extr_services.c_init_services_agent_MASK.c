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
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * name; } ;
struct common_agent {int /*<<< orphan*/  lookup_func; TYPE_1__ parent; } ;
struct agent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_AGENT ; 
 int /*<<< orphan*/  FUNC0 (struct agent* (*) ()) ; 
 int /*<<< orphan*/  FUNC1 (struct agent* (*) ()) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct common_agent* FUNC3 (int,int) ; 
 int /*<<< orphan*/  services_lookup_func ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

struct agent *
FUNC5(void)
{
	struct common_agent	*retval;
	FUNC0(init_services_agent);

	retval = FUNC3(1, sizeof(*retval));
	FUNC2(retval != NULL);

	retval->parent.name = FUNC4("services");
	FUNC2(retval->parent.name != NULL);

	retval->parent.type = COMMON_AGENT;
	retval->lookup_func = services_lookup_func;

	FUNC1(init_services_agent);
	return ((struct agent *)retval);
}