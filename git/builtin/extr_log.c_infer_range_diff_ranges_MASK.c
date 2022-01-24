#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static void FUNC6(struct strbuf *r1,
				    struct strbuf *r2,
				    const char *prev,
				    struct commit *origin,
				    struct commit *head)
{
	const char *head_oid = FUNC2(&head->object.oid);

	if (!FUNC5(prev, "..")) {
		FUNC3(r1, "%s..%s", head_oid, prev);
		FUNC3(r2, "%s..%s", prev, head_oid);
	} else if (!origin) {
		FUNC1(FUNC0("failed to infer range-diff ranges"));
	} else {
		FUNC4(r1, prev);
		FUNC3(r2, "%s..%s",
			    FUNC2(&origin->object.oid), head_oid);
	}
}