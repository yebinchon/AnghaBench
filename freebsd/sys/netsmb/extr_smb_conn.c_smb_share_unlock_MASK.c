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
struct smb_share {int dummy; } ;
struct smb_connobj {int /*<<< orphan*/  co_interlock; } ;

/* Variables and functions */
 struct smb_connobj* FUNC0 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_connobj*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct smb_share *ssp)
{
	struct smb_connobj *cp;
	
	cp = FUNC0(ssp);
	FUNC3(&cp->co_interlock);
	FUNC1(cp);
	FUNC2(&cp->co_interlock);
}