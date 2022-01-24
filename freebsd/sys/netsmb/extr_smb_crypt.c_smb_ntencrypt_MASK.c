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
typedef  int /*<<< orphan*/  MD4_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  M_SMBTEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 

int
FUNC9(const u_char *apwd, u_char *C8, u_char *RN)
{
	u_char S21[21];
	u_int16_t *unipwd;
	MD4_CTX *ctxp;
	u_int len;

	len = FUNC8(apwd);
	unipwd = FUNC5((len + 1) * sizeof(u_int16_t), M_SMBTEMP, M_WAITOK);
	/*
	 * S21 = concat(MD4(U(apwd)), zeros(5));
	 */
	FUNC7(unipwd, apwd);
	ctxp = FUNC5(sizeof(MD4_CTX), M_SMBTEMP, M_WAITOK);
	FUNC1(ctxp);
	FUNC2(ctxp, (u_char*)unipwd, len * sizeof(u_int16_t));
	FUNC4(unipwd, M_SMBTEMP);
	FUNC3(S21, 21);
	FUNC0(S21, ctxp);
	FUNC4(ctxp, M_SMBTEMP);

	FUNC6(S21, C8, RN);
	FUNC6(S21 + 7, C8, RN + 8);
	FUNC6(S21 + 14, C8, RN + 16);
	return 0;
}