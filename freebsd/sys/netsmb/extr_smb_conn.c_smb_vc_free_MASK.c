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
struct smb_vc {int /*<<< orphan*/  vc_stlock; scalar_t__ vc_ucs_toserver; scalar_t__ vc_ucs_tolocal; scalar_t__ vc_cp_toserver; scalar_t__ vc_cp_tolocal; int /*<<< orphan*/ * vc_toserver; int /*<<< orphan*/ * vc_tolocal; scalar_t__ vc_toupper; scalar_t__ vc_tolower; struct smb_vc* vc_laddr; struct smb_vc* vc_paddr; struct smb_vc* vc_mackey; int /*<<< orphan*/  vc_domain; int /*<<< orphan*/  vc_pass; int /*<<< orphan*/  vc_srvname; int /*<<< orphan*/  vc_username; scalar_t__ vc_iod; } ;
struct smb_connobj {int dummy; } ;

/* Variables and functions */
 struct smb_vc* FUNC0 (struct smb_connobj*) ; 
 int /*<<< orphan*/  M_SMBCONN ; 
 int /*<<< orphan*/  M_SMBTEMP ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_vc*) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_vc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct smb_connobj *cp)
{
	struct smb_vc *vcp = FUNC0(cp);

	if (vcp->vc_iod)
		FUNC6(vcp->vc_iod);
	FUNC1(vcp->vc_username);
	FUNC1(vcp->vc_srvname);
	FUNC1(vcp->vc_pass);
	FUNC1(vcp->vc_domain);
	if (vcp->vc_mackey)
		FUNC3(vcp->vc_mackey, M_SMBTEMP);
	if (vcp->vc_paddr)
		FUNC3(vcp->vc_paddr, M_SONAME);
	if (vcp->vc_laddr)
		FUNC3(vcp->vc_laddr, M_SONAME);
	if (vcp->vc_tolower)
		FUNC4(vcp->vc_tolower);
	if (vcp->vc_toupper)
		FUNC4(vcp->vc_toupper);
	if (vcp->vc_tolocal)
		vcp->vc_tolocal = NULL;
	if (vcp->vc_toserver)
		vcp->vc_toserver = NULL;
	if (vcp->vc_cp_tolocal)
		FUNC4(vcp->vc_cp_tolocal);
	if (vcp->vc_cp_toserver)
		FUNC4(vcp->vc_cp_toserver);
	if (vcp->vc_ucs_tolocal)
		FUNC4(vcp->vc_ucs_tolocal);
	if (vcp->vc_ucs_toserver)
		FUNC4(vcp->vc_ucs_toserver);
	FUNC5(FUNC2(vcp));
	FUNC7(&vcp->vc_stlock);
	FUNC3(vcp, M_SMBCONN);
}