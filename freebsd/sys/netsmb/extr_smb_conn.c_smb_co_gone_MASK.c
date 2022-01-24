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
struct smb_connobj {int /*<<< orphan*/  (* co_free ) (struct smb_connobj*) ;int /*<<< orphan*/  co_children; int /*<<< orphan*/  co_interlock; struct smb_connobj* co_parent; int /*<<< orphan*/  (* co_gone ) (struct smb_connobj*,struct smb_cred*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct smb_connobj*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  co_next ; 
 int /*<<< orphan*/  FUNC1 (struct smb_connobj*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_connobj*,struct smb_cred*) ; 
 int /*<<< orphan*/  smb_connobj ; 
 int /*<<< orphan*/  FUNC3 (struct smb_connobj*,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_connobj*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct smb_connobj *cp, struct smb_cred *scred)
{
	struct smb_connobj *parent;

	if (cp->co_gone)
		cp->co_gone(cp, scred);
	parent = cp->co_parent;
	if (parent) {
		FUNC6(&parent->co_interlock);
		FUNC1(parent);
		FUNC5(&parent->co_interlock);
		FUNC0(&parent->co_children, cp, smb_connobj, co_next);
		FUNC2(parent, scred);
	}
	if (cp->co_free)
		cp->co_free(cp);
}