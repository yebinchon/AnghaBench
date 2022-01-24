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
typedef  int /*<<< orphan*/  bktr_ptr_t ;

/* Variables and functions */
 int MT2032_ADDR ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int 
FUNC4(bktr_ptr_t bktr, u_char regNum)
{
	int		ch;

	if (FUNC2(bktr, MT2032_ADDR, regNum, -1) == -1) {
		if (bootverbose)
			FUNC3("%s: MT2032 write failed (i2c addr %#x)\n",
				FUNC0(bktr), MT2032_ADDR);
		return -1;
	}
	if ((ch = FUNC1(bktr, MT2032_ADDR + 1)) == -1) {
		if (bootverbose)
			FUNC3("%s: MT2032 get register %d failed\n",
				FUNC0(bktr), regNum);
		return -1;
	}
	return ch;
}