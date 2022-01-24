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
struct smb_vc {int dummy; } ;
struct smb_cred {int dummy; } ;
struct smb_connobj {int /*<<< orphan*/  co_interlock; } ;

/* Variables and functions */
 struct smb_connobj* FUNC0 (struct smb_vc*) ; 
 int FUNC1 (struct smb_connobj*,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct smb_vc *vcp, struct smb_cred *scred)
{
	struct smb_connobj *cp;
	int error;

	cp = FUNC0(vcp);
	FUNC3(&cp->co_interlock);
	error = FUNC1(cp, scred);
	FUNC2(&cp->co_interlock);
	return error;
}