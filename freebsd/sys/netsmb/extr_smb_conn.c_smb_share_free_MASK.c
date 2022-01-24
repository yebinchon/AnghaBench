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
struct smb_share {int /*<<< orphan*/  ss_stlock; int /*<<< orphan*/  ss_pass; int /*<<< orphan*/  ss_name; } ;
struct smb_connobj {int dummy; } ;

/* Variables and functions */
 struct smb_share* FUNC0 (struct smb_connobj*) ; 
 int /*<<< orphan*/  M_SMBCONN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_share*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct smb_connobj *cp)
{
	struct smb_share *ssp = FUNC0(cp);

	FUNC1(ssp->ss_name);
	FUNC1(ssp->ss_pass);
	FUNC5(&ssp->ss_stlock);
	FUNC4(FUNC2(ssp));
	FUNC3(ssp, M_SMBCONN);
}