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
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  GIT_MAX_HEXSZ ; 
 int /*<<< orphan*/  OBJ_NONE ; 
 scalar_t__ PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,struct object_id*) ; 
 scalar_t__ FUNC11 (char*,struct object_id*,char const**) ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static void FUNC12(void)
{
	char line[GIT_MAX_HEXSZ + 1 + PATH_MAX + 2];
	struct object_id oid;
	const char *p;

	for (;;) {
		if (!FUNC9(line, sizeof(line), stdin)) {
			if (FUNC7(stdin))
				break;
			if (!FUNC8(stdin))
				FUNC5("BUG: fgets returned NULL, not EOF, not error!");
			if (errno != EINTR)
				FUNC6("fgets");
			FUNC4(stdin);
			continue;
		}
		if (line[0] == '-') {
			if (FUNC10(line+1, &oid))
				FUNC5(FUNC0("expected edge object ID, got garbage:\n %s"),
				    line);
			FUNC2(&oid);
			continue;
		}
		if (FUNC11(line, &oid, &p))
			FUNC5(FUNC0("expected object ID, got garbage:\n %s"), line);

		FUNC3(p + 1);
		FUNC1(&oid, OBJ_NONE, p + 1, 0);
	}
}