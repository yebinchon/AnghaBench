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
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  config_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,struct object_id*,void*) ; 

__attribute__((used)) static int FUNC4(config_fn_t fn,
				    const char *name,
				    void *data)
{
	struct object_id oid;

	if (FUNC2(name, &oid) < 0)
		return FUNC1(FUNC0("unable to resolve config blob '%s'"), name);
	return FUNC3(fn, name, &oid, data);
}