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
struct smb_connobj {int co_level; int co_usecount; int /*<<< orphan*/  co_interlock; int /*<<< orphan*/ * co_locker; scalar_t__ co_lockcnt; int /*<<< orphan*/  co_lock; int /*<<< orphan*/  co_children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SX_RECURSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_connobj*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct smb_connobj *cp, int level, char *ilockname, char *lockname)
{
	FUNC0(&cp->co_children);
	FUNC3(&cp->co_interlock, ilockname, SX_RECURSE);
	FUNC1(&cp->co_lock, "smblock");
	cp->co_lockcnt = 0;
	cp->co_locker = NULL;
	cp->co_level = level;
	cp->co_usecount = 1;
	FUNC5(&cp->co_interlock);
	FUNC2(cp);
	FUNC4(&cp->co_interlock);
}