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
struct string_list {int dummy; } ;
struct strbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct pack_objects_args {int dummy; } ;
struct child_process {int in; int /*<<< orphan*/  out; } ;
struct TYPE_2__ {scalar_t__ hexsz; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FOR_EACH_OBJECT_PROMISOR_ONLY ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct child_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,int,int) ; 
 int /*<<< orphan*/  packtmp ; 
 int /*<<< orphan*/  FUNC10 (struct child_process*,struct pack_objects_args const*) ; 
 scalar_t__ FUNC11 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct string_list*,int /*<<< orphan*/ ) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  write_oid ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC14(const struct pack_objects_args *args,
				    struct string_list *names)
{
	struct child_process cmd = CHILD_PROCESS_INIT;
	FILE *out;
	struct strbuf line = STRBUF_INIT;

	FUNC10(&cmd, args);
	cmd.in = -1;

	/*
	 * NEEDSWORK: Giving pack-objects only the OIDs without any ordering
	 * hints may result in suboptimal deltas in the resulting pack. See if
	 * the OIDs can be sent with fake paths such that pack-objects can use a
	 * {type -> existing pack order} ordering when computing deltas instead
	 * of a {type -> size} ordering, which may produce better deltas.
	 */
	FUNC6(write_oid, &cmd,
			       FOR_EACH_OBJECT_PROMISOR_ONLY);

	if (cmd.in == -1)
		/* No packed objects; cmd was never started */
		return;

	FUNC1(cmd.in);

	out = FUNC13(cmd.out, "r");
	while (FUNC11(&line, out) != EOF) {
		char *promisor_name;
		int fd;
		if (line.len != the_hash_algo->hexsz)
			FUNC2(FUNC0("repack: Expecting full hex object ID lines only from pack-objects."));
		FUNC12(names, line.buf);

		/*
		 * pack-objects creates the .pack and .idx files, but not the
		 * .promisor file. Create the .promisor file, which is empty.
		 *
		 * NEEDSWORK: fetch-pack sometimes generates non-empty
		 * .promisor files containing the ref names and associated
		 * hashes at the point of generation of the corresponding
		 * packfile, but this would not preserve their contents. Maybe
		 * concatenate the contents of all .promisor files instead of
		 * just creating a new empty file.
		 */
		promisor_name = FUNC8("%s-%s.promisor", packtmp,
					  line.buf);
		fd = FUNC9(promisor_name, O_CREAT|O_EXCL|O_WRONLY, 0600);
		if (fd < 0)
			FUNC3(FUNC0("unable to create '%s'"), promisor_name);
		FUNC1(fd);
		FUNC7(promisor_name);
	}
	FUNC4(out);
	if (FUNC5(&cmd))
		FUNC2(FUNC0("could not finish pack-objects to repack promisor objects"));
}