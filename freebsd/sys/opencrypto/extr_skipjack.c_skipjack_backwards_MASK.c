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
typedef  int u_int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 

void
FUNC5 (u_int8_t *cipher, u_int8_t *plain, u_int8_t **key_tables)
{
	/* setup 4 16-bit portions */
	u_int8_t wh1 = cipher[0];  u_int8_t wl1 = cipher[1];
	u_int8_t wh2 = cipher[2];  u_int8_t wl2 = cipher[3];
	u_int8_t wh3 = cipher[4];  u_int8_t wl3 = cipher[5];
	u_int8_t wh4 = cipher[6];  u_int8_t wl4 = cipher[7];

	u_int8_t * k0 = key_tables [0];
	u_int8_t * k1 = key_tables [1];
	u_int8_t * k2 = key_tables [2];
	u_int8_t * k3 = key_tables [3];
	u_int8_t * k4 = key_tables [4];
	u_int8_t * k5 = key_tables [5];
	u_int8_t * k6 = key_tables [6];
	u_int8_t * k7 = key_tables [7];
	u_int8_t * k8 = key_tables [8];
	u_int8_t * k9 = key_tables [9];

	/* first 8 rounds */
	FUNC2 (wh2,wl2, wh2,wl2); wl3 ^= wl2 ^ 32; wh3 ^= wh2;
	FUNC0 (wh3,wl3, wh3,wl3); wl4 ^= wl3 ^ 31; wh4 ^= wh3;
	FUNC3 (wh4,wl4, wh4,wl4); wl1 ^= wl4 ^ 30; wh1 ^= wh4;
	FUNC1 (wh1,wl1, wh1,wl1); wl2 ^= wl1 ^ 29; wh2 ^= wh1;
	FUNC4 (wh2,wl2, wh2,wl2); wl3 ^= wl2 ^ 28; wh3 ^= wh2;
	FUNC2 (wh3,wl3, wh3,wl3); wl4 ^= wl3 ^ 27; wh4 ^= wh3;
	FUNC0 (wh4,wl4, wh4,wl4); wl1 ^= wl4 ^ 26; wh1 ^= wh4;
	FUNC3 (wh1,wl1, wh1,wl1); wl2 ^= wl1 ^ 25; wh2 ^= wh1;

	/* second 8 rounds */
	wh1 ^= wh2; wl1 ^= wl2 ^ 24; FUNC1 (wh2,wl2, wh2,wl2);
	wh2 ^= wh3; wl2 ^= wl3 ^ 23; FUNC4 (wh3,wl3, wh3,wl3);
	wh3 ^= wh4; wl3 ^= wl4 ^ 22; FUNC2 (wh4,wl4, wh4,wl4);
	wh4 ^= wh1; wl4 ^= wl1 ^ 21; FUNC0 (wh1,wl1, wh1,wl1);
	wh1 ^= wh2; wl1 ^= wl2 ^ 20; FUNC3 (wh2,wl2, wh2,wl2);
	wh2 ^= wh3; wl2 ^= wl3 ^ 19; FUNC1 (wh3,wl3, wh3,wl3);
	wh3 ^= wh4; wl3 ^= wl4 ^ 18; FUNC4 (wh4,wl4, wh4,wl4);
	wh4 ^= wh1; wl4 ^= wl1 ^ 17; FUNC2 (wh1,wl1, wh1,wl1);

	/* third 8 rounds */
	FUNC0 (wh2,wl2, wh2,wl2); wl3 ^= wl2 ^ 16; wh3 ^= wh2;
	FUNC3 (wh3,wl3, wh3,wl3); wl4 ^= wl3 ^ 15; wh4 ^= wh3;
	FUNC1 (wh4,wl4, wh4,wl4); wl1 ^= wl4 ^ 14; wh1 ^= wh4;
	FUNC4 (wh1,wl1, wh1,wl1); wl2 ^= wl1 ^ 13; wh2 ^= wh1;
	FUNC2 (wh2,wl2, wh2,wl2); wl3 ^= wl2 ^ 12; wh3 ^= wh2;
	FUNC0 (wh3,wl3, wh3,wl3); wl4 ^= wl3 ^ 11; wh4 ^= wh3;
	FUNC3 (wh4,wl4, wh4,wl4); wl1 ^= wl4 ^ 10; wh1 ^= wh4;
	FUNC1 (wh1,wl1, wh1,wl1); wl2 ^= wl1 ^ 9;  wh2 ^= wh1;

	/* last 8 rounds */
	wh1 ^= wh2; wl1 ^= wl2 ^ 8; FUNC4 (wh2,wl2, wh2,wl2);
	wh2 ^= wh3; wl2 ^= wl3 ^ 7; FUNC2 (wh3,wl3, wh3,wl3);
	wh3 ^= wh4; wl3 ^= wl4 ^ 6; FUNC0 (wh4,wl4, wh4,wl4);
	wh4 ^= wh1; wl4 ^= wl1 ^ 5; FUNC3 (wh1,wl1, wh1,wl1);
	wh1 ^= wh2; wl1 ^= wl2 ^ 4; FUNC1 (wh2,wl2, wh2,wl2);
	wh2 ^= wh3; wl2 ^= wl3 ^ 3; FUNC4 (wh3,wl3, wh3,wl3);
	wh3 ^= wh4; wl3 ^= wl4 ^ 2; FUNC2 (wh4,wl4, wh4,wl4);
	wh4 ^= wh1; wl4 ^= wl1 ^ 1; FUNC0 (wh1,wl1, wh1,wl1);

	/* pack into byte vector */
	plain [0] = wh1;  plain [1] = wl1;
	plain [2] = wh2;  plain [3] = wl2;
	plain [4] = wh3;  plain [5] = wl3;
	plain [6] = wh4;  plain [7] = wl4;
}