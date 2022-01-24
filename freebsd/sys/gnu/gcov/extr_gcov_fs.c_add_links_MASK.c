#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gcov_node {char* links; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {scalar_t__ ext; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_GCOV ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 char* FUNC0 (char*) ; 
 char FUNC1 (int /*<<< orphan*/ ,struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* gcov_link ; 
 char* FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct gcov_node*) ; 
 char* FUNC8 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct gcov_node *node, struct dentry *parent)
{
	const char *path_basename;
	char *target;
	int num;
	int i;

	for (num = 0; gcov_link[num].ext; num++)
		/* Nothing. */;
	node->links = FUNC8((num*sizeof(struct dentry *)), M_GCOV, M_NOWAIT|M_ZERO);
	if (node->links == NULL)
		return;
	for (i = 0; i < num; i++) {
		target = FUNC6(
				FUNC5(FUNC7(node)),
				&gcov_link[i]);
		if (target == NULL)
			goto out_err;
		path_basename = FUNC0(target);
		if (path_basename == target)
			goto out_err;
		node->links[i] = FUNC1(FUNC3(path_basename),
							parent,	target);
		if (!node->links[i])
			goto out_err;
		FUNC4(target, M_GCOV);
	}

	return;
out_err:
	FUNC4(target, M_GCOV);
	while (i-- > 0)
		FUNC2(node->links[i]);
	FUNC4(node->links, M_GCOV);
	node->links = NULL;
}