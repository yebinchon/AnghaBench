#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct tree {TYPE_1__ object; } ;
struct object_id {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  diffopt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__ log_tree_opt ; 
 struct tree* FUNC4 (int /*<<< orphan*/ ,struct object_id*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,struct object_id*,char const**) ; 
 scalar_t__ FUNC7 (struct tree*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC9(struct tree *tree1, const char *p)
{
	struct object_id oid;
	struct tree *tree2;
	if (!FUNC2(*p++) || FUNC6(p, &oid, &p) || *p)
		return FUNC1("Need exactly two trees, separated by a space");
	tree2 = FUNC4(the_repository, &oid);
	if (!tree2 || FUNC7(tree2))
		return -1;
	FUNC8("%s %s\n", FUNC5(&tree1->object.oid),
			  FUNC5(&tree2->object.oid));
	FUNC0(&tree1->object.oid, &tree2->object.oid,
		      "", &log_tree_opt.diffopt);
	FUNC3(&log_tree_opt);
	return 0;
}