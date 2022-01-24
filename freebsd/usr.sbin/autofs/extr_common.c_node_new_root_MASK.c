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
struct node {int /*<<< orphan*/  n_children; void* n_options; void* n_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct node* FUNC1 (int,int) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

struct node *
FUNC4(void)
{
	struct node *n;

	n = FUNC1(1, sizeof(*n));
	if (n == NULL)
		FUNC3(1, "calloc");
	// XXX
	n->n_key = FUNC2("/");
	n->n_options = FUNC2("");

	FUNC0(&n->n_children);

	return (n);
}