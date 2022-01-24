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
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
typedef  int /*<<< orphan*/  id_t ;

/* Variables and functions */
 int FUNC0 (char**,char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 struct group* FUNC3 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 size_t FUNC6 (char const*) ; 
 char* FUNC7 (char**,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char**) ; 

__attribute__((used)) static char *
FUNC9(char *rule)
{
	id_t id;
	struct passwd *pwd;
	struct group *grp;
	const char *subject, *textid, *rest;
	char *end, *humanized;
	int ret;

	subject = FUNC7(&rule, ":");
	textid = FUNC7(&rule, ":");
	if (textid == NULL)
		FUNC2(1, "rule passed from the kernel didn't contain subject");
	if (rule != NULL)
		rest = rule;
	else
		rest = "";

	/* Replace numerical user and group ids with names. */
	if (FUNC5(subject, "user") == 0) {
		id = FUNC8(textid, &end);
		if ((size_t)(end - textid) != FUNC6(textid))
			FUNC2(1, "malformed uid '%s'", textid);
		pwd = FUNC4(id);
		if (pwd != NULL)
			textid = pwd->pw_name;
	} else if (FUNC5(subject, "group") == 0) {
		id = FUNC8(textid, &end);
		if ((size_t)(end - textid) != FUNC6(textid))
			FUNC2(1, "malformed gid '%s'", textid);
		grp = FUNC3(id);
		if (grp != NULL)
			textid = grp->gr_name;
	}

	ret = FUNC0(&humanized, "%s:%s:%s", subject, textid, rest);
	if (ret <= 0)
		FUNC1(1, "asprintf");

	return (humanized);
}