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
struct node {struct node* n_parent; int /*<<< orphan*/  n_options; } ;

/* Variables and functions */
 char* FUNC0 (char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(const struct node *n, char *x)
{
	char *options;

	if (n == NULL)
		return (x);

	options = FUNC0(x, ',', n->n_options);
	FUNC1(x);

	return (FUNC2(n->n_parent, options));
}