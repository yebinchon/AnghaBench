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
struct smb_cred {int dummy; } ;
struct smb_connobj {int co_usecount; int /*<<< orphan*/  co_interlock; int /*<<< orphan*/  co_flags; int /*<<< orphan*/  co_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMBO_GONE ; 
 int /*<<< orphan*/  FUNC1 (struct smb_connobj*,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_connobj*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct smb_connobj *cp, struct smb_cred *scred)
{

	FUNC4(&cp->co_interlock);
	FUNC2(cp);
	if (cp->co_usecount > 1) {
		cp->co_usecount--;
		FUNC3(&cp->co_interlock);
		return;
	}
	if (cp->co_usecount == 0) {
		FUNC0("negative use_count for object %d", cp->co_level);
		FUNC3(&cp->co_interlock);
		return;
	}
	cp->co_usecount--;
	cp->co_flags |= SMBO_GONE;
	FUNC3(&cp->co_interlock);
	FUNC1(cp, scred);
}