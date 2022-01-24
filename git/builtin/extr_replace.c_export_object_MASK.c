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
struct child_process {int git_cmd; int out; int /*<<< orphan*/  args; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC4 (struct object_id const*) ; 
 int FUNC5 (char const*,int,int) ; 
 scalar_t__ FUNC6 (struct child_process*) ; 
 char* FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(const struct object_id *oid, enum object_type type,
			  int raw, const char *filename)
{
	struct child_process cmd = CHILD_PROCESS_INIT;
	int fd;

	fd = FUNC5(filename, O_WRONLY | O_CREAT | O_TRUNC, 0666);
	if (fd < 0)
		return FUNC3(FUNC0("unable to open %s for writing"), filename);

	FUNC1(&cmd.args, "--no-replace-objects");
	FUNC1(&cmd.args, "cat-file");
	if (raw)
		FUNC1(&cmd.args, FUNC7(type));
	else
		FUNC1(&cmd.args, "-p");
	FUNC1(&cmd.args, FUNC4(oid));
	cmd.git_cmd = 1;
	cmd.out = fd;

	if (FUNC6(&cmd))
		return FUNC2(FUNC0("cat-file reported failure"));
	return 0;
}