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
struct node {int /*<<< orphan*/  children; struct node* parent; int /*<<< orphan*/  key; void* name; void* ref; void* id; } ;
struct mytree {int ignore; int indent; struct node* cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct node*,int /*<<< orphan*/ ) ; 
 struct node* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  siblings ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 void* FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(void *userData, const char *name, const char **attr)
{
	struct mytree *mt;
	struct node *np;
	int i;

	mt = userData;
	if (!FUNC3(name, "FreeBSD")) {
		mt->ignore = 1;
		return;
	}
	mt->ignore = 0;
	mt->indent += 2;
	np = FUNC1();
	for (i = 0; attr[i]; i += 2) {
		if (!FUNC3(attr[i], "id"))
			np->id = FUNC4(attr[i+1]);
		else if (!FUNC3(attr[i], "ref"))
			np->ref = FUNC4(attr[i+1]);
	}
	np->name = FUNC4(name);
	FUNC2(np->key, name);
	FUNC2(np->key, "::");
	np->parent = mt->cur;
	FUNC0(&mt->cur->children, np, siblings);
	mt->cur = np;
}