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
struct root_hold_token {char const* who; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct root_hold_token*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  list ; 
 struct root_hold_token* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  root_holds ; 
 int /*<<< orphan*/  root_holds_mtx ; 

struct root_hold_token *
FUNC5(const char *identifier)
{
	struct root_hold_token *h;

	h = FUNC2(sizeof *h, M_DEVBUF, M_ZERO | M_WAITOK);
	h->who = identifier;
	FUNC3(&root_holds_mtx);
	FUNC1("root mount");
	FUNC0(&root_holds, h, list);
	FUNC4(&root_holds_mtx);
	return (h);
}