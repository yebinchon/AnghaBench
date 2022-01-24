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
typedef  scalar_t__ id_t ;

/* Variables and functions */
 int FUNC0 (char**,char*,char const*,...) ; 
 char* FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char const*,scalar_t__*,char const*) ; 
 int FUNC4 (char const*,scalar_t__*,char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 char* FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 char* FUNC8 (char**,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 

__attribute__((used)) static char *
FUNC11(const char *rule, bool resolve_ids)
{
	id_t id;
	const char *subject, *textid, *rest;
	char *copy, *expanded, *resolved, *tofree;
	int error, ret;

	tofree = copy = FUNC6(rule);
	if (copy == NULL) {
		FUNC9("strdup");
		return (NULL);
	}

	subject = FUNC8(&copy, ":");
	textid = FUNC8(&copy, ":");
	if (textid == NULL) {
		FUNC10("malformed rule '%s': missing subject", rule);
		return (NULL);
	}
	if (copy != NULL)
		rest = copy;
	else
		rest = "";

	if (FUNC5(subject, "u") == 0)
		subject = "user";
	else if (FUNC5(subject, "g") == 0)
		subject = "group";
	else if (FUNC5(subject, "p") == 0)
		subject = "process";
	else if (FUNC5(subject, "l") == 0 ||
	    FUNC5(subject, "c") == 0 ||
	    FUNC5(subject, "class") == 0)
		subject = "loginclass";
	else if (FUNC5(subject, "j") == 0)
		subject = "jail";

	if (resolve_ids &&
	    FUNC5(subject, "user") == 0 && FUNC7(textid) > 0) {
		error = FUNC4(textid, &id, rule);
		if (error != 0) {
			FUNC2(tofree);
			return (NULL);
		}
		ret = FUNC0(&resolved, "%s:%d:%s", subject, (int)id, rest);
	} else if (resolve_ids &&
	    FUNC5(subject, "group") == 0 && FUNC7(textid) > 0) {
		error = FUNC3(textid, &id, rule);
		if (error != 0) {
			FUNC2(tofree);
			return (NULL);
		}
		ret = FUNC0(&resolved, "%s:%d:%s", subject, (int)id, rest);
	} else {
		ret = FUNC0(&resolved, "%s:%s:%s", subject, textid, rest);
	}

	if (ret <= 0) {
		FUNC9("asprintf");
		FUNC2(tofree);
		return (NULL);
	}

	FUNC2(tofree);

	expanded = FUNC1(resolved, rule);
	FUNC2(resolved);

	return (expanded);
}