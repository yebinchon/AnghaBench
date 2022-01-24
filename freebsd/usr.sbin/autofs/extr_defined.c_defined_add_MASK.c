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
struct defined_value {void* d_value; void* d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct defined_value*,int /*<<< orphan*/ ) ; 
 struct defined_value* FUNC1 (int,int) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/  d_next ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  defined_values ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char const*) ; 

__attribute__((used)) static void
FUNC7(const char *name, const char *value)
{
	struct defined_value *d;
	const char *found;

	found = FUNC3(name);
	if (found != NULL)
		FUNC6(1, "variable %s already defined", name);

	FUNC4("defining variable %s=%s", name, value);

	d = FUNC1(1, sizeof(*d));
	if (d == NULL)
		FUNC5(1, "calloc");
	d->d_name = FUNC2(name);
	d->d_value = FUNC2(value);

	FUNC0(&defined_values, d, d_next);
}