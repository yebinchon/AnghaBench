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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct oidset {int dummy; } ;
struct oid_array {struct oidset* seen; struct strbuf* scratch; struct expand_data* expand; struct batch_options* opt; } ;
struct object_info {int dummy; } ;
struct object_cb_data {struct oidset* seen; struct strbuf* scratch; struct expand_data* expand; struct batch_options* opt; } ;
struct TYPE_2__ {int /*<<< orphan*/ * typep; } ;
struct expand_data {int mark_query; int split_on_whitespace; int skip_object_info; char* rest; int /*<<< orphan*/  type; TYPE_1__ info; } ;
struct batch_options {char* format; scalar_t__ unordered; scalar_t__ all_objects; scalar_t__ print_contents; scalar_t__ cmdmode; } ;
typedef  int /*<<< orphan*/  empty ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FOR_EACH_OBJECT_PACK_ORDER ; 
 struct object_info OBJECT_INFO_INIT ; 
 struct oidset OIDSET_INIT ; 
 struct oid_array OID_ARRAY_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  batch_object_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct strbuf*,struct batch_options*,struct expand_data*) ; 
 int /*<<< orphan*/  batch_unordered_loose ; 
 int /*<<< orphan*/  batch_unordered_packed ; 
 int /*<<< orphan*/  collect_loose_object ; 
 int /*<<< orphan*/  collect_packed_object ; 
 int /*<<< orphan*/  expand_format ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct oid_array*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct oid_array*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct object_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct expand_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct oid_array*) ; 
 int /*<<< orphan*/  FUNC7 (struct oid_array*,int /*<<< orphan*/ ,struct oid_array*) ; 
 int /*<<< orphan*/  FUNC8 (struct oidset*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*,int /*<<< orphan*/ ,struct expand_data*) ; 
 scalar_t__ FUNC10 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 scalar_t__ FUNC12 (char*,char) ; 
 char* FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int warn_on_object_refname_ambiguity ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int FUNC15(struct batch_options *opt)
{
	struct strbuf input = STRBUF_INIT;
	struct strbuf output = STRBUF_INIT;
	struct expand_data data;
	int save_warning;
	int retval = 0;

	if (!opt->format)
		opt->format = "%(objectname) %(objecttype) %(objectsize)";

	/*
	 * Expand once with our special mark_query flag, which will prime the
	 * object_info to be handed to oid_object_info_extended for each
	 * object.
	 */
	FUNC5(&data, 0, sizeof(data));
	data.mark_query = 1;
	FUNC9(&output, opt->format, expand_format, &data);
	data.mark_query = 0;
	FUNC11(&output);
	if (opt->cmdmode)
		data.split_on_whitespace = 1;

	if (opt->all_objects) {
		struct object_info empty = OBJECT_INFO_INIT;
		if (!FUNC4(&data.info, &empty, sizeof(empty)))
			data.skip_object_info = 1;
	}

	/*
	 * If we are printing out the object, then always fill in the type,
	 * since we will want to decide whether or not to stream.
	 */
	if (opt->print_contents)
		data.info.typep = &data.type;

	if (opt->all_objects) {
		struct object_cb_data cb;

		if (FUNC3())
			FUNC14("This repository uses promisor remotes. Some objects may not be loaded.");

		cb.opt = opt;
		cb.expand = &data;
		cb.scratch = &output;

		if (opt->unordered) {
			struct oidset seen = OIDSET_INIT;

			cb.seen = &seen;

			FUNC1(batch_unordered_loose, &cb, 0);
			FUNC2(batch_unordered_packed, &cb,
					       FOR_EACH_OBJECT_PACK_ORDER);

			FUNC8(&seen);
		} else {
			struct oid_array sa = OID_ARRAY_INIT;

			FUNC1(collect_loose_object, &sa, 0);
			FUNC2(collect_packed_object, &sa, 0);

			FUNC7(&sa, batch_object_cb, &cb);

			FUNC6(&sa);
		}

		FUNC11(&output);
		return 0;
	}

	/*
	 * We are going to call get_sha1 on a potentially very large number of
	 * objects. In most large cases, these will be actual object sha1s. The
	 * cost to double-check that each one is not also a ref (just so we can
	 * warn) ends up dwarfing the actual cost of the object lookups
	 * themselves. We can work around it by just turning off the warning.
	 */
	save_warning = warn_on_object_refname_ambiguity;
	warn_on_object_refname_ambiguity = 0;

	while (FUNC10(&input, stdin) != EOF) {
		if (data.split_on_whitespace) {
			/*
			 * Split at first whitespace, tying off the beginning
			 * of the string and saving the remainder (or NULL) in
			 * data.rest.
			 */
			char *p = FUNC13(input.buf, " \t");
			if (p) {
				while (*p && FUNC12(" \t", *p))
					*p++ = '\0';
			}
			data.rest = p;
		}

		FUNC0(input.buf, &output, opt, &data);
	}

	FUNC11(&input);
	FUNC11(&output);
	warn_on_object_refname_ambiguity = save_warning;
	return retval;
}