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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct strbuf*,char const*,char const**) ; 

__attribute__((used)) static const char *FUNC4(const char *next, struct strbuf *arg)
{
	if (*next == '"') {
		const char *orig = next;

		if (FUNC3(arg, next, &next))
			FUNC0("badly quoted argument: %s", orig);
		if (*next && !FUNC1(*next))
			FUNC0("unexpected character after quoted argument: %s", orig);
	} else {
		while (*next && !FUNC1(*next))
			FUNC2(arg, *next++);
	}

	return next;
}