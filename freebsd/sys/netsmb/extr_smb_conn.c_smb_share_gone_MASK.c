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
struct smb_cred {int dummy; } ;
struct smb_connobj {int dummy; } ;

/* Variables and functions */
 struct smb_share* FUNC0 (struct smb_connobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*,struct smb_cred*) ; 

__attribute__((used)) static void
FUNC2(struct smb_connobj *cp, struct smb_cred *scred)
{
	struct smb_share *ssp = FUNC0(cp);

	FUNC1(ssp, scred);
}