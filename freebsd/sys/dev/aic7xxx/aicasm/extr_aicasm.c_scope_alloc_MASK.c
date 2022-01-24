#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  inner_scope; } ;
typedef  TYPE_1__ scope_t ;
struct TYPE_8__ {int /*<<< orphan*/  inner_scope; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_SOFTWARE ; 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  scope_links ; 
 int /*<<< orphan*/  scope_stack ; 
 int /*<<< orphan*/  scope_stack_links ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

scope_t *
FUNC7(void)
{
	scope_t *new_scope;

	new_scope = (scope_t *)FUNC4(sizeof(scope_t));
	if (new_scope == NULL)
		FUNC6("Unable to malloc scope object", EX_SOFTWARE);
	FUNC5(new_scope, 0, sizeof(*new_scope));
	FUNC2(&new_scope->inner_scope);
	
	if (FUNC0(&scope_stack) != NULL) {
		FUNC3(&FUNC0(&scope_stack)->inner_scope,
				  new_scope, scope_links);
	}
	/* This patch is now the current scope */
	FUNC1(&scope_stack, new_scope, scope_stack_links);
	return new_scope;
}