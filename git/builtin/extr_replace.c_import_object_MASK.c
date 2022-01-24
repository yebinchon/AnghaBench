#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; } ;
struct stat {int dummy; } ;
struct object_id {int dummy; } ;
struct child_process {char const** argv; int git_cmd; int in; int out; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {scalar_t__ hexsz; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int HASH_FORMAT_CHECK ; 
 int HASH_WRITE_OBJECT ; 
 int OBJ_TREE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (struct child_process*) ; 
 scalar_t__ FUNC5 (int,struct stat*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct object_id*,int,struct stat*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct child_process*) ; 
 scalar_t__ FUNC10 (struct strbuf*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 TYPE_2__* the_hash_algo ; 
 TYPE_1__* the_repository ; 

__attribute__((used)) static int FUNC12(struct object_id *oid, enum object_type type,
			  int raw, const char *filename)
{
	int fd;

	fd = FUNC8(filename, O_RDONLY);
	if (fd < 0)
		return FUNC3(FUNC0("unable to open %s for reading"), filename);

	if (!raw && type == OBJ_TREE) {
		const char *argv[] = { "mktree", NULL };
		struct child_process cmd = CHILD_PROCESS_INIT;
		struct strbuf result = STRBUF_INIT;

		cmd.argv = argv;
		cmd.git_cmd = 1;
		cmd.in = fd;
		cmd.out = -1;

		if (FUNC9(&cmd)) {
			FUNC1(fd);
			return FUNC2(FUNC0("unable to spawn mktree"));
		}

		if (FUNC10(&result, cmd.out, the_hash_algo->hexsz + 1) < 0) {
			FUNC3(FUNC0("unable to read from mktree"));
			FUNC1(fd);
			FUNC1(cmd.out);
			return -1;
		}
		FUNC1(cmd.out);

		if (FUNC4(&cmd)) {
			FUNC11(&result);
			return FUNC2(FUNC0("mktree reported failure"));
		}
		if (FUNC6(result.buf, oid) < 0) {
			FUNC11(&result);
			return FUNC2(FUNC0("mktree did not return an object name"));
		}

		FUNC11(&result);
	} else {
		struct stat st;
		int flags = HASH_FORMAT_CHECK | HASH_WRITE_OBJECT;

		if (FUNC5(fd, &st) < 0) {
			FUNC3(FUNC0("unable to fstat %s"), filename);
			FUNC1(fd);
			return -1;
		}
		if (FUNC7(the_repository->index, oid, fd, &st, type, NULL, flags) < 0)
			return FUNC2(FUNC0("unable to write object to database"));
		/* index_fd close()s fd for us */
	}

	/*
	 * No need to close(fd) here; both run-command and index-fd
	 * will have done it for us.
	 */
	return 0;
}