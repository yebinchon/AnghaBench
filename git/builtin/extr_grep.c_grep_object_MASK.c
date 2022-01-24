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
struct strbuf {int /*<<< orphan*/  len; } ;
struct pathspec {int dummy; } ;
struct object {scalar_t__ type; int /*<<< orphan*/  oid; } ;
struct grep_opt {int /*<<< orphan*/  repo; } ;

/* Variables and functions */
 scalar_t__ OBJ_BLOB ; 
 scalar_t__ OBJ_COMMIT ; 
 scalar_t__ OBJ_TREE ; 
 scalar_t__ PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (struct grep_opt*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct grep_opt*,struct pathspec const*,struct tree_desc*,struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tree_desc*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int FUNC14 (char const*) ; 
 int /*<<< orphan*/  tree_type ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

__attribute__((used)) static int FUNC16(struct grep_opt *opt, const struct pathspec *pathspec,
		       struct object *obj, const char *name, const char *path)
{
	if (obj->type == OBJ_BLOB)
		return FUNC3(opt, &obj->oid, name, 0, path);
	if (obj->type == OBJ_COMMIT || obj->type == OBJ_TREE) {
		struct tree_desc tree;
		void *data;
		unsigned long size;
		struct strbuf base;
		int hit, len;

		FUNC4();
		data = FUNC9(opt->repo,
						  &obj->oid, tree_type,
						  &size, NULL);
		FUNC5();

		if (!data)
			FUNC1(FUNC0("unable to read tree (%s)"), FUNC8(&obj->oid));

		len = name ? FUNC14(name) : 0;
		FUNC12(&base, PATH_MAX + len + 1);
		if (len) {
			FUNC10(&base, name, len);
			FUNC11(&base, ':');
		}
		FUNC7(&tree, data, size);
		hit = FUNC6(opt, pathspec, &tree, &base, base.len,
				obj->type == OBJ_COMMIT);
		FUNC13(&base);
		FUNC2(data);
		return hit;
	}
	FUNC1(FUNC0("unable to grep from object of type %s"), FUNC15(obj->type));
}