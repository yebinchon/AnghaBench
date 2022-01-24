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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  M_SMBTEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/ * N8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 

int
FUNC7(const u_char *apwd, u_char *C8, u_char *RN)
{
	u_char *p, *P14, *S21;

	p = FUNC3(14 + 21, M_SMBTEMP, M_WAITOK);
	FUNC1(p, 14 + 21);
	P14 = p;
	S21 = p + 14;
	FUNC0(apwd, P14, FUNC4(14, FUNC6(apwd)));
	/*
	 * S21 = concat(Ex(P14, N8), zeros(5));
	 */
	FUNC5(P14, N8, S21);
	FUNC5(P14 + 7, N8, S21 + 8);

	FUNC5(S21, C8, RN);
	FUNC5(S21 + 7, C8, RN + 8);
	FUNC5(S21 + 14, C8, RN + 16);
	FUNC2(p, M_SMBTEMP);
	return 0;
}