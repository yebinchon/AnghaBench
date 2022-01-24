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
typedef  int u_char ;
typedef  int /*<<< orphan*/  des_key_schedule ;

/* Variables and functions */
 int /*<<< orphan*/  M_SMBTEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const u_char *key, u_char *data, u_char *dest)
{
	des_key_schedule *ksp;
	u_char kk[8];

	kk[0] = key[0] & 0xfe;
	kk[1] = key[0] << 7 | (key[1] >> 1 & 0xfe);
	kk[2] = key[1] << 6 | (key[2] >> 2 & 0xfe);
	kk[3] = key[2] << 5 | (key[3] >> 3 & 0xfe);
	kk[4] = key[3] << 4 | (key[4] >> 4 & 0xfe);
	kk[5] = key[4] << 3 | (key[5] >> 5 & 0xfe);
	kk[6] = key[5] << 2 | (key[6] >> 6 & 0xfe);
	kk[7] = key[6] << 1;
	ksp = FUNC3(sizeof(des_key_schedule), M_SMBTEMP, M_WAITOK);
	FUNC1(kk, *ksp);
	FUNC0(data, dest, *ksp, 1);
	FUNC2(ksp, M_SMBTEMP);
}