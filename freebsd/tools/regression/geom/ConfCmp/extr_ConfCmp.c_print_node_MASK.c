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
struct node {char* name; char* id; char* ref; int /*<<< orphan*/  key; int /*<<< orphan*/  cont; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct node *np)
{
	FUNC0("\"%s\" -- \"%s\" -- \"%s\"", np->name, FUNC1(np->cont), FUNC1(np->key));
	if (np->id)
		FUNC0(" id=\"%s\"", np->id);
	if (np->ref)
		FUNC0(" ref=\"%s\"", np->ref);
	FUNC0("\n");
}