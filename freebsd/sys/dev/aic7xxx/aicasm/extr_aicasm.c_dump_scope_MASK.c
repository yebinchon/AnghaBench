#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  inner_scope; } ;
typedef  TYPE_1__ scope_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  scope_links ; 

__attribute__((used)) static void
FUNC3(scope_t *scope)
{
	scope_t *cur_scope;

	/*
	 * Emit the first patch for this scope
	 */
	FUNC2(scope, 0);

	/*
	 * Dump each scope within this one.
	 */
	cur_scope = FUNC0(&scope->inner_scope);

	while (cur_scope != NULL) {

		FUNC3(cur_scope);

		cur_scope = FUNC1(cur_scope, scope_links);
	}

	/*
	 * Emit the second, closing, patch for this scope
	 */
	FUNC2(scope, 1);
}