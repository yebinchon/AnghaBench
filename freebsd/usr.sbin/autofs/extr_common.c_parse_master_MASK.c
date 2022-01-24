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
struct node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct node*) ; 
 int /*<<< orphan*/  FUNC5 (struct node*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct node*,char const*) ; 
 int /*<<< orphan*/ * yyin ; 

void
FUNC7(struct node *root, const char *master)
{

	FUNC3("parsing auto_master file at \"%s\"", master);

	yyin = FUNC2(master, "r");
	if (yyin == NULL)
		FUNC0(1, "unable to open %s", master);

	FUNC6(root, master);

	FUNC1(yyin);
	yyin = NULL;

	FUNC3("done parsing \"%s\"", master);

	FUNC5(root, true);
	FUNC4(root);
}