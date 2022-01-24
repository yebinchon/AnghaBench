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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,size_t) ; 
 int FUNC1 (int*,int) ; 

__attribute__((used)) static void
FUNC2(uint32_t zeros[][256], size_t len)
{
	uint32_t op[32];
	uint32_t n;

	FUNC0(op, len);
	for (n = 0; n < 256; n++) {
		zeros[0][n] = FUNC1(op, n);
		zeros[1][n] = FUNC1(op, n << 8);
		zeros[2][n] = FUNC1(op, n << 16);
		zeros[3][n] = FUNC1(op, n << 24);
	}
}