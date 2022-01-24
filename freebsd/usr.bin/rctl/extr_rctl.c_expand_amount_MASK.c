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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int FUNC0 (char**,char*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 char* FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,char const*) ; 

__attribute__((used)) static char *
FUNC9(const char *rule, const char *unexpanded_rule)
{
	uint64_t num;
	const char *subject, *subject_id, *resource, *action, *amount, *per;
	char *copy, *expanded, *tofree;
	int ret;

	tofree = copy = FUNC4(rule);
	if (copy == NULL) {
		FUNC7("strdup");
		return (NULL);
	}

	subject = FUNC6(&copy, ":");
	subject_id = FUNC6(&copy, ":");
	resource = FUNC6(&copy, ":");
	action = FUNC6(&copy, "=/");
	amount = FUNC6(&copy, "/");
	per = copy;

	if (amount == NULL || FUNC5(amount) == 0) {
		/*
		 * The "copy" has already been tinkered with by strsep().
		 */
		FUNC3(tofree);
		copy = FUNC4(rule);
		if (copy == NULL) {
			FUNC7("strdup");
			return (NULL);
		}
		return (copy);
	}

	FUNC1(subject != NULL);
	FUNC1(subject_id != NULL);
	FUNC1(resource != NULL);
	FUNC1(action != NULL);

	if (FUNC2(amount, &num)) {
		FUNC8("malformed rule '%s': invalid numeric value '%s'",
		    unexpanded_rule, amount);
		FUNC3(tofree);
		return (NULL);
	}

	if (per == NULL) {
		ret = FUNC0(&expanded, "%s:%s:%s:%s=%jd",
		    subject, subject_id, resource, action, (uintmax_t)num);
	} else {
		ret = FUNC0(&expanded, "%s:%s:%s:%s=%jd/%s",
		    subject, subject_id, resource, action, (uintmax_t)num, per);
	}

	if (ret <= 0) {
		FUNC7("asprintf");
		FUNC3(tofree);
		return (NULL);
	}

	FUNC3(tofree);

	return (expanded);
}