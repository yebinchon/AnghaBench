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
struct merge_options {char* subtree_shift; char const* branch1; char const* branch2; int verbosity; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct object_id const**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  builtin_merge_recursive_usage ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC9 (struct merge_options*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct merge_options*,struct object_id*,struct object_id*,unsigned int,struct object_id const**,struct commit**) ; 
 scalar_t__ FUNC11 (struct merge_options*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,char const*) ; 
 struct object_id* FUNC17 (int) ; 

int FUNC18(int argc, const char **argv, const char *prefix)
{
	const struct object_id *bases[21];
	unsigned bases_count = 0;
	int i, failed;
	struct object_id h1, h2;
	struct merge_options o;
	char *better1, *better2;
	struct commit *result;

	FUNC9(&o, the_repository);
	if (argv[0] && FUNC6(argv[0], "-subtree"))
		o.subtree_shift = "";

	if (argc < 4)
		FUNC15(builtin_merge_recursive_usage, argv[0]);

	for (i = 1; i < argc; ++i) {
		const char *arg = argv[i];

		if (FUNC14(arg, "--")) {
			if (!arg[2])
				break;
			if (FUNC11(&o, arg + 2))
				FUNC4(FUNC2("unknown option %s"), arg);
			continue;
		}
		if (bases_count < FUNC0(bases)-1) {
			struct object_id *oid = FUNC17(sizeof(struct object_id));
			if (FUNC8(argv[i], oid))
				FUNC4(FUNC2("could not parse object '%s'"), argv[i]);
			bases[bases_count++] = oid;
		}
		else
			FUNC16(FUNC1("cannot handle more than %d base. "
				   "Ignoring %s.",
				   "cannot handle more than %d bases. "
				   "Ignoring %s.",
				    (int)FUNC0(bases)-1),
				(int)FUNC0(bases)-1, argv[i]);
	}
	if (argc - i != 3) /* "--" "<head>" "<remote>" */
		FUNC4(FUNC2("not handling anything other than two heads merge."));

	if (FUNC13(the_repository))
		FUNC5("merge");

	o.branch1 = argv[++i];
	o.branch2 = argv[++i];

	if (FUNC8(o.branch1, &h1))
		FUNC4(FUNC2("could not resolve ref '%s'"), o.branch1);
	if (FUNC8(o.branch2, &h2))
		FUNC4(FUNC2("could not resolve ref '%s'"), o.branch2);

	o.branch1 = better1 = FUNC3(o.branch1);
	o.branch2 = better2 = FUNC3(o.branch2);

	if (o.verbosity >= 3)
		FUNC12(FUNC2("Merging %s with %s\n"), o.branch1, o.branch2);

	failed = FUNC10(&o, &h1, &h2, bases_count, bases, &result);

	FUNC7(better1);
	FUNC7(better2);

	if (failed < 0)
		return 128; /* die() error code */
	return failed;
}