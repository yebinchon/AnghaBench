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
struct ref_format {scalar_t__ format; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 unsigned int GPG_VERIFY_OMIT_STATUS ; 
 int /*<<< orphan*/  GPG_VERIFY_RAW ; 
 unsigned int GPG_VERIFY_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option const FUNC1 (int /*<<< orphan*/ ,char*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option const FUNC2 () ; 
 struct option const FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option const FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_ARGV0 ; 
 struct ref_format REF_FORMAT_INIT ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_verify_tag_config ; 
 scalar_t__ FUNC8 (struct object_id*,char const*,unsigned int) ; 
 int FUNC9 (int,char const**,char const*,struct option const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*,struct object_id*,struct ref_format*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct option const*) ; 
 scalar_t__ FUNC12 (struct ref_format*) ; 
 int /*<<< orphan*/  verify_tag_usage ; 

int FUNC13(int argc, const char **argv, const char *prefix)
{
	int i = 1, verbose = 0, had_error = 0;
	unsigned flags = 0;
	struct ref_format format = REF_FORMAT_INIT;
	const struct option verify_tag_options[] = {
		FUNC4(&verbose, FUNC0("print tag contents")),
		FUNC1(0, "raw", &flags, FUNC0("print raw gpg status output"), GPG_VERIFY_RAW),
		FUNC3(0, "format", &format.format, FUNC0("format"), FUNC0("format to use for the output")),
		FUNC2()
	};

	FUNC7(git_verify_tag_config, NULL);

	argc = FUNC9(argc, argv, prefix, verify_tag_options,
			     verify_tag_usage, PARSE_OPT_KEEP_ARGV0);
	if (argc <= i)
		FUNC11(verify_tag_usage, verify_tag_options);

	if (verbose)
		flags |= GPG_VERIFY_VERBOSE;

	if (format.format) {
		if (FUNC12(&format))
			FUNC11(verify_tag_usage,
					   verify_tag_options);
		flags |= GPG_VERIFY_OMIT_STATUS;
	}

	while (i < argc) {
		struct object_id oid;
		const char *name = argv[i++];

		if (FUNC6(name, &oid)) {
			had_error = !!FUNC5("tag '%s' not found.", name);
			continue;
		}

		if (FUNC8(&oid, name, flags)) {
			had_error = 1;
			continue;
		}

		if (format.format)
			FUNC10(name, &oid, &format);
	}
	return had_error;
}