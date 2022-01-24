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
struct options {int dummy; } ;
struct option {void* o_value; void* o_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct options*,struct option*,int /*<<< orphan*/ ) ; 
 struct option* FUNC1 (int,int) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  o_next ; 
 struct option* FUNC5 (struct options*,char const*) ; 

struct option *
FUNC6(struct options *options, const char *name, const char *value)
{
	struct option *o;

	o = FUNC5(options, name);
	if (o != NULL) {
		FUNC4("duplicated option \"%s\"", name);
		return (NULL);
	}

	o = FUNC1(1, sizeof(*o));
	if (o == NULL)
		FUNC3(1, "calloc");
	o->o_name = FUNC2(name);
	o->o_value = FUNC2(value);
	FUNC0(options, o, o_next);

	return (o);
}