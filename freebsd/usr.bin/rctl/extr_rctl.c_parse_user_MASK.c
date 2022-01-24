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
struct passwd {int /*<<< orphan*/  pw_uid; } ;
typedef  int /*<<< orphan*/  id_t ;

/* Variables and functions */
 struct passwd* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC5(const char *s, id_t *uidp, const char *unexpanded_rule)
{
	char *end;
	struct passwd *pwd;

	pwd = FUNC0(s);
	if (pwd != NULL) {
		*uidp = pwd->pw_uid;
		return (0);
	}

	if (!FUNC1(s[0])) {
		FUNC4("malformed rule '%s': unknown user '%s'",
		    unexpanded_rule, s);
		return (1);
	}

	*uidp = FUNC3(s, &end);
	if ((size_t)(end - s) != FUNC2(s)) {
		FUNC4("malformed rule '%s': trailing characters "
		    "after numerical id", unexpanded_rule);
		return (1);
	}

	return (0);
}