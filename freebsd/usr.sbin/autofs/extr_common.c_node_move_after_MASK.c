#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct node {TYPE_1__* n_parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  n_children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct node*,struct node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_next ; 

__attribute__((used)) static void
FUNC2(struct node *n, struct node *previous)
{

	FUNC1(&n->n_parent->n_children, n, n_next);
	n->n_parent = previous->n_parent;
	FUNC0(&previous->n_parent->n_children, previous, n, n_next);
}