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
struct node {char* name; char* id; char* ref; int /*<<< orphan*/  children; int /*<<< orphan*/  cont; } ;

/* Variables and functions */
 struct node* FUNC0 (int /*<<< orphan*/ *) ; 
 struct node* FUNC1 (struct node*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct node*,struct node*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct node*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  siblings ; 
 int FUNC8 (char*,char*) ; 

__attribute__((used)) static int
FUNC9(struct node *n1, struct node *n2, int in)
{
	int i;
	struct node *n1a, *n2a;

	i = FUNC8(n1->name, n2->name);
	if (i)
		return (i);
	if (n1->id && n2->id)
		i = FUNC6(n1->id, n2->id);
	else if (n1->id || n2->id)
		i = -1;
	if (i)
		return (i);
	if (n1->ref && n2->ref)
		i = FUNC6(n1->ref, n2->ref);
	else if (n1->ref || n2->ref)
		i = -1;
	if (i)
		return (i);
	if (!FUNC8(n1->name, "ref"))
		i = FUNC6(FUNC7(n1->cont), FUNC7(n2->cont));
	else
		i = FUNC8(FUNC7(n1->cont), FUNC7(n2->cont));
	if (i)
		return (1);
	n1a = FUNC0(&n1->children);
	n2a = FUNC0(&n2->children);
	for (;;) {
		if (n1a == NULL && n2a == NULL)
			return (0);
		if (n1a != NULL && n2a == NULL) {
			FUNC5("1>");
			FUNC3(in);
			FUNC4(n1a);
			FUNC5("2>\n");
			return (1);
		}
		if (n1a == NULL && n2a != NULL) {
			FUNC5("1>\n");
			FUNC5("2>");
			FUNC3(in);
			FUNC4(n2a);
			return (1);
		}
		i = FUNC2(n1a, n2a, in + 2);
		if (i)
			return (1);
		n1a = FUNC1(n1a, siblings);
		n2a = FUNC1(n2a, siblings);
	}
	return (0);
}