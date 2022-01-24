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
struct transport {scalar_t__ pack_lockfile; TYPE_1__* smart_options; } ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct packed_git {int dummy; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
struct child_process {int git_cmd; int in; int no_stdout; int err; int /*<<< orphan*/  no_stderr; int /*<<< orphan*/  env; int /*<<< orphan*/  args; } ;
struct check_connected_options {int err_fd; char* shallow_file; int /*<<< orphan*/  quiet; int /*<<< orphan*/  env; scalar_t__ progress; int /*<<< orphan*/  is_deepening_fetch; scalar_t__ check_refs_only; struct transport* transport; } ;
typedef  scalar_t__ (* oid_iterate_fn ) (void*,struct object_id*) ;
struct TYPE_4__ {unsigned int hexsz; } ;
struct TYPE_3__ {scalar_t__ self_contained_and_connected; } ;

/* Variables and functions */
 struct check_connected_options CHECK_CONNECTED_INIT ; 
 struct child_process CHILD_PROCESS_INIT ; 
 scalar_t__ EINVAL ; 
 scalar_t__ EPIPE ; 
 int /*<<< orphan*/  GIT_MAX_HEXSZ ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct packed_git* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ errno ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct packed_git*) ; 
 scalar_t__ FUNC8 (struct child_process*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC11 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*) ; 
 scalar_t__ FUNC19 (scalar_t__,char*,size_t*) ; 
 TYPE_2__* the_hash_algo ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC20 (int,char*,unsigned int const) ; 

int FUNC21(oid_iterate_fn fn, void *cb_data,
		    struct check_connected_options *opt)
{
	struct child_process rev_list = CHILD_PROCESS_INIT;
	struct check_connected_options defaults = CHECK_CONNECTED_INIT;
	char commit[GIT_MAX_HEXSZ + 1];
	struct object_id oid;
	int err = 0;
	struct packed_git *new_pack = NULL;
	struct transport *transport;
	size_t base_len;
	const unsigned hexsz = the_hash_algo->hexsz;

	if (!opt)
		opt = &defaults;
	transport = opt->transport;

	if (fn(cb_data, &oid)) {
		if (opt->err_fd)
			FUNC4(opt->err_fd);
		return err;
	}

	if (transport && transport->smart_options &&
	    transport->smart_options->self_contained_and_connected &&
	    transport->pack_lockfile &&
	    FUNC19(transport->pack_lockfile, ".keep", &base_len)) {
		struct strbuf idx_file = STRBUF_INIT;
		FUNC16(&idx_file, transport->pack_lockfile, base_len);
		FUNC17(&idx_file, ".idx");
		new_pack = FUNC1(idx_file.buf, idx_file.len, 1);
		FUNC18(&idx_file);
	}

	if (opt->check_refs_only) {
		/*
		 * For partial clones, we don't want to have to do a regular
		 * connectivity check because we have to enumerate and exclude
		 * all promisor objects (slow), and then the connectivity check
		 * itself becomes a no-op because in a partial clone every
		 * object is a promisor object. Instead, just make sure we
		 * received the objects pointed to by each wanted ref.
		 */
		do {
			if (!FUNC12(the_repository, &oid))
				return 1;
		} while (!fn(cb_data, &oid));
		return 0;
	}

	if (opt->shallow_file) {
		FUNC2(&rev_list.args, "--shallow-file");
		FUNC2(&rev_list.args, opt->shallow_file);
	}
	FUNC2(&rev_list.args,"rev-list");
	FUNC2(&rev_list.args, "--objects");
	FUNC2(&rev_list.args, "--stdin");
	if (FUNC9())
		FUNC2(&rev_list.args, "--exclude-promisor-objects");
	if (!opt->is_deepening_fetch) {
		FUNC2(&rev_list.args, "--not");
		FUNC2(&rev_list.args, "--all");
	}
	FUNC2(&rev_list.args, "--quiet");
	FUNC2(&rev_list.args, "--alternate-refs");
	if (opt->progress)
		FUNC3(&rev_list.args, "--progress=%s",
				 FUNC0("Checking connectivity"));

	rev_list.git_cmd = 1;
	rev_list.env = opt->env;
	rev_list.in = -1;
	rev_list.no_stdout = 1;
	if (opt->err_fd)
		rev_list.err = opt->err_fd;
	else
		rev_list.no_stderr = opt->quiet;

	if (FUNC15(&rev_list))
		return FUNC5(FUNC0("Could not run 'git rev-list'"));

	FUNC14(SIGPIPE, SIG_IGN);

	commit[hexsz] = '\n';
	do {
		/*
		 * If index-pack already checked that:
		 * - there are no dangling pointers in the new pack
		 * - the pack is self contained
		 * Then if the updated ref is in the new pack, then we
		 * are sure the ref is good and not sending it to
		 * rev-list for verification.
		 */
		if (new_pack && FUNC7(oid.hash, new_pack))
			continue;

		FUNC10(commit, FUNC11(&oid), hexsz);
		if (FUNC20(rev_list.in, commit, hexsz + 1) < 0) {
			if (errno != EPIPE && errno != EINVAL)
				FUNC6(FUNC0("failed write to rev-list"));
			err = -1;
			break;
		}
	} while (!fn(cb_data, &oid));

	if (FUNC4(rev_list.in))
		err = FUNC6(FUNC0("failed to close rev-list's stdin"));

	FUNC13(SIGPIPE);
	return FUNC8(&rev_list) || err;
}