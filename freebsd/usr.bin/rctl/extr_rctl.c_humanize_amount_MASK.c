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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int HN_DECIMAL ; 
 int HN_NOSPACE ; 
 int FUNC0 (char**,char*,char const*,char const*,char const*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 char* FUNC8 (char**,char*) ; 

__attribute__((used)) static char *
FUNC9(char *rule)
{
	int64_t num;
	const char *subject, *subject_id, *resource, *action, *amount, *per;
	char *copy, *humanized, buf[6], *tofree;
	int ret;

	tofree = copy = FUNC6(rule);
	if (copy == NULL)
		FUNC2(1, "strdup");

	subject = FUNC8(&copy, ":");
	subject_id = FUNC8(&copy, ":");
	resource = FUNC8(&copy, ":");
	action = FUNC8(&copy, "=/");
	amount = FUNC8(&copy, "/");
	per = copy;

	if (amount == NULL || FUNC7(amount) == 0 ||
	    FUNC5(amount, &num) != 0) {
		FUNC3(tofree);
		return (rule);
	}

	FUNC1(subject != NULL);
	FUNC1(subject_id != NULL);
	FUNC1(resource != NULL);
	FUNC1(action != NULL);

	if (FUNC4(buf, sizeof(buf), num, "", HN_AUTOSCALE,
	    HN_DECIMAL | HN_NOSPACE) == -1)
		FUNC2(1, "humanize_number");

	if (per == NULL) {
		ret = FUNC0(&humanized, "%s:%s:%s:%s=%s",
		    subject, subject_id, resource, action, buf);
	} else {
		ret = FUNC0(&humanized, "%s:%s:%s:%s=%s/%s",
		    subject, subject_id, resource, action, buf, per);
	}

	if (ret <= 0)
		FUNC2(1, "asprintf");

	FUNC3(tofree);
	return (humanized);
}