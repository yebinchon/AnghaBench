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
struct node {char* n_key; struct node* n_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*,char,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct node const*) ; 

__attribute__((used)) static char *
FUNC4(const struct node *n, char *x)
{
	char *path;

	if (n->n_parent == NULL)
		return (x);

	/*
	 * Return "/-" for direct maps only if we were asked for path
	 * to the "/-" node itself, not to any of its subnodes.
	 */
	if (FUNC3(n) && x[0] != '\0')
		return (x);

	FUNC0(n->n_key[0] != '\0');
	path = FUNC1(n->n_key, '/', x);
	FUNC2(x);

	return (FUNC4(n->n_parent, path));
}