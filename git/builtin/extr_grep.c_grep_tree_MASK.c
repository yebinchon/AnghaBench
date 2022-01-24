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
struct tree_desc {int dummy; } ;
struct strbuf {int len; int /*<<< orphan*/ * buf; } ;
struct repository {int /*<<< orphan*/  index; int /*<<< orphan*/ * submodule_prefix; } ;
struct pathspec {int dummy; } ;
struct name_entry {int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; int /*<<< orphan*/  path; } ;
struct grep_opt {scalar_t__ status_only; struct repository* repo; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
typedef  enum interesting { ____Placeholder_interesting } interesting ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int all_entries_interesting ; 
 int all_entries_not_interesting ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int entry_not_interesting ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (struct grep_opt*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct grep_opt*,struct pathspec const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tree_desc*,void*,unsigned long) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ recurse_submodules ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,int) ; 
 scalar_t__ FUNC16 (struct tree_desc*,struct name_entry*) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct name_entry*,struct strbuf*,int /*<<< orphan*/ ,struct pathspec const*) ; 
 int FUNC18 (struct name_entry*) ; 

__attribute__((used)) static int FUNC19(struct grep_opt *opt, const struct pathspec *pathspec,
		     struct tree_desc *tree, struct strbuf *base, int tn_len,
		     int check_attr)
{
	struct repository *repo = opt->repo;
	int hit = 0;
	enum interesting match = entry_not_interesting;
	struct name_entry entry;
	int old_baselen = base->len;
	struct strbuf name = STRBUF_INIT;
	int name_base_len = 0;
	if (repo->submodule_prefix) {
		FUNC13(&name, repo->submodule_prefix);
		name_base_len = name.len;
	}

	while (FUNC16(tree, &entry)) {
		int te_len = FUNC18(&entry);

		if (match != all_entries_interesting) {
			FUNC13(&name, base->buf + tn_len);
			match = FUNC17(repo->index,
						       &entry, &name,
						       0, pathspec);
			FUNC15(&name, name_base_len);

			if (match == all_entries_not_interesting)
				break;
			if (match == entry_not_interesting)
				continue;
		}

		FUNC11(base, entry.path, te_len);

		if (FUNC2(entry.mode)) {
			hit |= FUNC6(opt, &entry.oid, base->buf, tn_len,
					 check_attr ? base->buf + tn_len : NULL);
		} else if (FUNC0(entry.mode)) {
			enum object_type type;
			struct tree_desc sub;
			void *data;
			unsigned long size;

			data = FUNC9(&entry.oid, &type, &size);
			if (!data)
				FUNC4(FUNC3("unable to read tree (%s)"),
				    FUNC10(&entry.oid));

			FUNC12(base, '/');
			FUNC8(&sub, data, size);
			hit |= FUNC19(opt, pathspec, &sub, base, tn_len,
					 check_attr);
			FUNC5(data);
		} else if (recurse_submodules && FUNC1(entry.mode)) {
			hit |= FUNC7(opt, pathspec, &entry.oid,
					      base->buf, base->buf + tn_len,
					      1); /* ignored */
		}

		FUNC15(base, old_baselen);

		if (hit && opt->status_only)
			break;
	}

	FUNC14(&name);
	return hit;
}