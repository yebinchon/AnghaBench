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
struct root_hold_token {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct root_hold_token*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct root_hold_token*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  root_holds ; 
 int /*<<< orphan*/  root_holds_mtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct root_hold_token *h)
{

	if (h == NULL)
		return;

	FUNC3(&root_holds_mtx);
	FUNC0(h, list);
	FUNC1("root mount");
	FUNC5(&root_holds);
	FUNC4(&root_holds_mtx);
	FUNC2(h, M_DEVBUF);
}