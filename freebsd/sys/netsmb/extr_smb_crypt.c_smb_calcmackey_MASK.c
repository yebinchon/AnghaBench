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
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct smb_vc {int vc_hflags2; int vc_mackeylen; int /*<<< orphan*/ * vc_mackey; int /*<<< orphan*/  vc_ch; scalar_t__ vc_seqno; } ;
typedef  int /*<<< orphan*/  MD4_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  M_SMBTEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int SMB_FLAGS2_SECURITY_SIGNATURE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC10 (struct smb_vc*) ; 
 int FUNC11 (char const*) ; 

int
FUNC12(struct smb_vc *vcp)
{
	const char *pwd;
	u_int16_t *unipwd;
	u_int len;
	MD4_CTX md4;
	u_char S16[16], S21[21];

	FUNC0(vcp->vc_hflags2 & SMB_FLAGS2_SECURITY_SIGNATURE,
	    ("signatures not enabled"));

	if (vcp->vc_mackey != NULL) {
		FUNC6(vcp->vc_mackey, M_SMBTEMP);
		vcp->vc_mackey = NULL;
		vcp->vc_mackeylen = 0;
		vcp->vc_seqno = 0;
	}

	/*
	 * The partial MAC key is the concatenation of the 16 byte session
	 * key and the 24 byte challenge response.
	 */
	vcp->vc_mackeylen = 16 + 24;
	vcp->vc_mackey = FUNC7(vcp->vc_mackeylen, M_SMBTEMP, M_WAITOK);

	/*
	 * Calculate session key:
	 *	MD4(MD4(U(PN)))
	 */
	pwd = FUNC10(vcp);
	len = FUNC11(pwd);
	unipwd = FUNC7((len + 1) * sizeof(u_int16_t), M_SMBTEMP, M_WAITOK);
	FUNC9(unipwd, pwd);
	FUNC2(&md4);
	FUNC3(&md4, (u_char *)unipwd, len * sizeof(u_int16_t));
	FUNC1(S16, &md4);
	FUNC2(&md4);
	FUNC3(&md4, S16, 16);
	FUNC1(vcp->vc_mackey, &md4);
	FUNC6(unipwd, M_SMBTEMP);

	/*
	 * Calculate response to challenge:
	 *	Ex(concat(MD4(U(pass)), zeros(5)), C8)
	 */
	FUNC5(S21, 21);
	FUNC4(S16, S21, 16);
	FUNC8(S21, vcp->vc_ch, vcp->vc_mackey + 16);
	FUNC8(S21 + 7, vcp->vc_ch, vcp->vc_mackey + 24);
	FUNC8(S21 + 14, vcp->vc_ch, vcp->vc_mackey + 32);

	return (0);
}