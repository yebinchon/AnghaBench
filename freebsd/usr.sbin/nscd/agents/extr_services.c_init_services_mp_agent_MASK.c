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
struct TYPE_2__ {int /*<<< orphan*/ * name; int /*<<< orphan*/  type; } ;
struct multipart_agent {TYPE_1__ parent; int /*<<< orphan*/  mp_destroy_func; int /*<<< orphan*/  mp_lookup_func; int /*<<< orphan*/  mp_init_func; } ;
struct agent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MULTIPART_AGENT ; 
 int /*<<< orphan*/  FUNC0 (struct agent* (*) ()) ; 
 int /*<<< orphan*/  FUNC1 (struct agent* (*) ()) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct multipart_agent* FUNC3 (int,int) ; 
 int /*<<< orphan*/  services_mp_destroy_func ; 
 int /*<<< orphan*/  services_mp_init_func ; 
 int /*<<< orphan*/  services_mp_lookup_func ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

struct agent *
FUNC5(void)
{
	struct multipart_agent	*retval;

	FUNC0(init_services_mp_agent);
	retval = FUNC3(1,
		sizeof(*retval));
	FUNC2(retval != NULL);

	retval->parent.name = FUNC4("services");
	retval->parent.type = MULTIPART_AGENT;
	retval->mp_init_func = services_mp_init_func;
	retval->mp_lookup_func = services_mp_lookup_func;
	retval->mp_destroy_func = services_mp_destroy_func;
	FUNC2(retval->parent.name != NULL);

	FUNC1(init_services_mp_agent);
	return ((struct agent *)retval);
}