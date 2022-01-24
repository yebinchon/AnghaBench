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
struct pattern_list {int dummy; } ;
struct pattern {int /*<<< orphan*/  pattern; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct pattern_list*,struct pattern*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  link ; 
 struct pattern* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(struct pattern_list *list, const char *pattern)
{
	struct pattern *entry;
	size_t len;

	FUNC1("adding pattern '%s'\n", pattern);
	len = FUNC5(pattern);
	if ((entry = FUNC3(sizeof *entry + len + 1)) == NULL) {
		errno = ENOMEM;
		FUNC2("malloc()");
	}
	FUNC4(entry->pattern, pattern, len + 1);
	FUNC0(list, entry, link);
}