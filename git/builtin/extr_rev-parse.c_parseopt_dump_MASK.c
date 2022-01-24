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
struct strbuf {int dummy; } ;
struct option {int /*<<< orphan*/ * long_name; int /*<<< orphan*/ * short_name; struct strbuf* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stuck_long ; 

__attribute__((used)) static int FUNC3(const struct option *o, const char *arg, int unset)
{
	struct strbuf *parsed = o->value;
	if (unset)
		FUNC2(parsed, " --no-%s", o->long_name);
	else if (o->short_name && (o->long_name == NULL || !stuck_long))
		FUNC2(parsed, " -%c", o->short_name);
	else
		FUNC2(parsed, " --%s", o->long_name);
	if (arg) {
		if (!stuck_long)
			FUNC1(parsed, ' ');
		else if (o->long_name)
			FUNC1(parsed, '=');
		FUNC0(parsed, arg);
	}
	return 0;
}