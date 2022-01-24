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
struct node {int /*<<< orphan*/  children; void* key; void* cont; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct node* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 () ; 

__attribute__((used)) static struct node *
FUNC4(void)
{
	struct node *np;

	np = FUNC1(1, sizeof *np);
	np->cont = FUNC3();
	FUNC2(np->cont);
	np->key = FUNC3();
	FUNC2(np->key);
	FUNC0(&np->children);
	return (np);
}