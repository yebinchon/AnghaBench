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
struct tree_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tree_size; int /*<<< orphan*/  tree_data; int /*<<< orphan*/  oid; } ;
struct pbase_tree {TYPE_1__ pcache; struct pbase_tree* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tree_desc*,char const*,int,char const*) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  num_preferred_base ; 
 unsigned int FUNC5 (char const*) ; 
 struct pbase_tree* pbase_tree ; 

__attribute__((used)) static void FUNC6(const char *name)
{
	struct pbase_tree *it;
	int cmplen;
	unsigned hash = FUNC5(name);

	if (!num_preferred_base || FUNC2(hash))
		return;

	cmplen = FUNC4(name);
	for (it = pbase_tree; it; it = it->next) {
		if (cmplen == 0) {
			FUNC0(&it->pcache.oid, OBJ_TREE, NULL, 1);
		}
		else {
			struct tree_desc tree;
			FUNC3(&tree, it->pcache.tree_data, it->pcache.tree_size);
			FUNC1(&tree, name, cmplen, name);
		}
	}
}