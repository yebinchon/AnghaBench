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
struct sbuf {int dummy; } ;
struct TYPE_3__ {char* name; struct TYPE_3__* parent; } ;
typedef  TYPE_1__ fsnode ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int MAKEFS_MAX_TREE_DEPTH ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 struct sbuf* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,char) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static char *
FUNC8(fsnode *node)
{
	fsnode *pnode;
	struct sbuf *sb;
	char *res, *rp[MAKEFS_MAX_TREE_DEPTH];
	int depth;

	depth = 0;
	rp[depth] = node->name;
	for (pnode = node->parent; pnode && depth < MAKEFS_MAX_TREE_DEPTH - 1;
	     pnode = pnode->parent) {
		if (FUNC7(pnode->name, ".") == 0)
			break;
		rp[++depth] = pnode->name;
	}
	
	sb = FUNC5();
	if (sb == NULL) {
		errno = ENOMEM;
		return (NULL);
	}
	while (depth > 0) {
		FUNC1(sb, rp[depth--]);
		FUNC6(sb, '/');
	}
	FUNC1(sb, rp[depth]);
	FUNC4(sb);
	res = FUNC0(FUNC2(sb));
	FUNC3(sb);
	if (res == NULL)
		errno = ENOMEM;
	return res;

}