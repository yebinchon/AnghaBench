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
typedef  int /*<<< orphan*/  subopt ;
struct tree_desc {int dummy; } ;
struct submodule {int dummy; } ;
struct strbuf {int /*<<< orphan*/  len; } ;
struct repository {TYPE_2__* objects; } ;
struct pathspec {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; struct object_id const oid; } ;
struct grep_opt {struct repository* repo; } ;
struct TYPE_4__ {TYPE_1__* odb; } ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 scalar_t__ OBJ_COMMIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (struct grep_opt*,struct pathspec const*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct grep_opt*,struct pathspec const*,struct tree_desc*,struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tree_desc*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct repository*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct grep_opt*,struct grep_opt*,int) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC11 (struct object_id const*) ; 
 struct object* FUNC12 (struct object_id const*,int /*<<< orphan*/ ) ; 
 void* FUNC13 (struct repository*,struct object_id const*,int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct repository*) ; 
 int /*<<< orphan*/  FUNC15 (struct repository*) ; 
 scalar_t__ FUNC16 (struct repository*,struct repository*,struct submodule const*) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*) ; 
 struct submodule* FUNC20 (struct repository*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  tree_type ; 

__attribute__((used)) static int FUNC21(struct grep_opt *opt,
			  const struct pathspec *pathspec,
			  const struct object_id *oid,
			  const char *filename, const char *path, int cached)
{
	struct repository subrepo;
	struct repository *superproject = opt->repo;
	const struct submodule *sub = FUNC20(superproject,
							  &null_oid, path);
	struct grep_opt subopt;
	int hit;

	/*
	 * NEEDSWORK: submodules functions need to be protected because they
	 * access the object store via config_from_gitmodules(): the latter
	 * uses get_oid() which, for now, relies on the global the_repository
	 * object.
	 */
	FUNC5();

	if (!FUNC9(superproject, path)) {
		FUNC6();
		return 0;
	}

	if (FUNC16(&subrepo, superproject, sub)) {
		FUNC6();
		return 0;
	}

	FUNC15(&subrepo);

	/*
	 * NEEDSWORK: This adds the submodule's object directory to the list of
	 * alternates for the single in-memory object store.  This has some bad
	 * consequences for memory (processed objects will never be freed) and
	 * performance (this increases the number of pack files git has to pay
	 * attention to, to the sum of the number of pack files in all the
	 * repositories processed so far).  This can be removed once the object
	 * store is no longer global and instead is a member of the repository
	 * object.
	 */
	FUNC1(subrepo.objects->odb->path);
	FUNC6();

	FUNC10(&subopt, opt, sizeof(subopt));
	subopt.repo = &subrepo;

	if (oid) {
		struct object *object;
		struct tree_desc tree;
		void *data;
		unsigned long size;
		struct strbuf base = STRBUF_INIT;

		object = FUNC12(oid, FUNC11(oid));

		FUNC5();
		data = FUNC13(&subrepo,
						  &object->oid, tree_type,
						  &size, NULL);
		FUNC6();

		if (!data)
			FUNC2(FUNC0("unable to read tree (%s)"), FUNC11(&object->oid));

		FUNC18(&base, filename);
		FUNC17(&base, '/');

		FUNC8(&tree, data, size);
		hit = FUNC7(&subopt, pathspec, &tree, &base, base.len,
				object->type == OBJ_COMMIT);
		FUNC19(&base);
		FUNC3(data);
	} else {
		hit = FUNC4(&subopt, pathspec, cached);
	}

	FUNC14(&subrepo);
	return hit;
}