#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  name; struct TYPE_6__* next; struct TYPE_6__* child; } ;
typedef  TYPE_1__ NODE ;

/* Variables and functions */
 scalar_t__ F_DIR ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(NODE *t1, NODE *t2, char const *path)
{
	int r, i;
	NODE *c1, *c2, *n1, *n2;
	char *np;

	r = 0;

	if (t1 != NULL)
		c1 = t1->child;
	else
		c1 = NULL;
	if (t2 != NULL)
		c2 = t2->child;
	else
		c2 = NULL;
	while (c1 != NULL || c2 != NULL) {
		n1 = n2 = NULL;
		if (c1 != NULL)
			n1 = c1->next;
		if (c2 != NULL)
			n2 = c2->next;
		if (c1 != NULL && c2 != NULL) {
			if (c1->type != F_DIR && c2->type == F_DIR) {
				n2 = c2;
				c2 = NULL;
			} else if (c1->type == F_DIR && c2->type != F_DIR) {
				n1 = c1;
				c1 = NULL;
			} else {
				i = FUNC3(c1->name, c2->name);
				if (i > 0) {
					n1 = c1;
					c1 = NULL;
				} else if (i < 0) {
					n2 = c2;
					c2 = NULL;
				}
			}
		}
		if (c1 == NULL && c2->type == F_DIR) {
			FUNC0(&np, "%s%d/", path, c2->name);
			i = FUNC4(c1, c2, np);
			FUNC2(np);
			i += FUNC1(c1, c2, path);
		} else if (c2 == NULL && c1->type == F_DIR) {
			FUNC0(&np, "%s%d/", path, c1->name);
			i = FUNC4(c1, c2, np);
			FUNC2(np);
			i += FUNC1(c1, c2, path);
		} else if (c1 == NULL || c2 == NULL) {
			i = FUNC1(c1, c2, path);
		} else if (c1->type == F_DIR && c2->type == F_DIR) {
			FUNC0(&np, "%s%d/", path, c1->name);
			i = FUNC4(c1, c2, np);
			FUNC2(np);
			i += FUNC1(c1, c2, path);
		} else {
			i = FUNC1(c1, c2, path);
		}
		r += i;
		c1 = n1;
		c2 = n2;
	}
	return (r);	
}