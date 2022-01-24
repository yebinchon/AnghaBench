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
struct node {int /*<<< orphan*/ * n_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct node* FUNC1 (struct node*,char const*) ; 

struct node *
FUNC2(struct node *root, const char *path)
{
	struct node *node;

	FUNC0(root->n_parent == NULL);

	node = FUNC1(root, path);
	if (node != NULL)
		FUNC0(node != root);

	return (node);
}