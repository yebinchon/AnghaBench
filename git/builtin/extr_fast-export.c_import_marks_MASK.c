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
typedef  scalar_t__ uint32_t ;
struct stat {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int flags; } ;
struct commit {struct object object; } ;
typedef  int /*<<< orphan*/  line ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int OBJ_COMMIT ; 
 int SHOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,struct object_id*) ; 
 scalar_t__ last_idnum ; 
 struct commit* FUNC5 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct object*,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (struct object_id*) ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 
 char* FUNC10 (char*,char) ; 
 scalar_t__ FUNC11 (char*,char**,int) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*) ; 

__attribute__((used)) static void FUNC13(char *input_file, int check_exists)
{
	char line[512];
	FILE *f;
	struct stat sb;

	if (check_exists && FUNC9(input_file, &sb))
		return;

	f = FUNC12(input_file, "r");
	while (FUNC3(line, sizeof(line), f)) {
		uint32_t mark;
		char *line_end, *mark_end;
		struct object_id oid;
		struct object *object;
		struct commit *commit;
		enum object_type type;

		line_end = FUNC10(line, '\n');
		if (line[0] != ':' || !line_end)
			FUNC0("corrupt mark line: %s", line);
		*line_end = '\0';

		mark = FUNC11(line + 1, &mark_end, 10);
		if (!mark || mark_end == line + 1
			|| *mark_end != ' ' || FUNC4(mark_end + 1, &oid))
			FUNC0("corrupt mark line: %s", line);

		if (last_idnum < mark)
			last_idnum = mark;

		type = FUNC7(the_repository, &oid, NULL);
		if (type < 0)
			FUNC0("object not found: %s", FUNC8(&oid));

		if (type != OBJ_COMMIT)
			/* only commits */
			continue;

		commit = FUNC5(the_repository, &oid);
		if (!commit)
			FUNC0("not a commit? can't happen: %s", FUNC8(&oid));

		object = &commit->object;

		if (object->flags & SHOWN)
			FUNC1("Object %s already has a mark", FUNC8(&oid));

		FUNC6(object, mark);

		object->flags |= SHOWN;
	}
	FUNC2(f);
}