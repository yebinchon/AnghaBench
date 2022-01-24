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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int MT2032_XOGC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

int 
FUNC6(bktr_ptr_t bktr)
{
	u_char            rdbuf[22];
	int             xogc, xok = 0;
	int             i;
	int		x;

	FUNC3(bktr, 0);

	for (i = 0; i < 21; i++) {
		if ((x = FUNC1(i)) == -1)
			break;
		rdbuf[i] = x;
	}
	if (i < 21)
		return -1;

	FUNC5("%s: MT2032: Companycode=%02x%02x Part=%02x Revision=%02x\n",
		FUNC4(bktr),
		rdbuf[0x11], rdbuf[0x12], rdbuf[0x13], rdbuf[0x14]);
	if (rdbuf[0x13] != 4) {
		FUNC5("%s: MT2032 not found or unknown type\n", FUNC4(bktr));
		return -1;
	}

	/* Initialize Registers per spec. */
	FUNC2(2, 0xff);
	FUNC2(3, 0x0f);
	FUNC2(4, 0x1f);
	FUNC2(6, 0xe4);
	FUNC2(7, 0x8f);
	FUNC2(8, 0xc3);
	FUNC2(9, 0x4e);
	FUNC2(10, 0xec);
	FUNC2(13, 0x32);

	/* Adjust XOGC (register 7), wait for XOK */
	xogc = 7;
	do {
		FUNC0(10000);
		xok = FUNC1(0x0e) & 0x01;
		if (xok == 1) {
			break;
		}
		xogc--;
		if (xogc == 3) {
			xogc = 4;	/* min. 4 per spec */
			break;
		}
		FUNC2(7, 0x88 + xogc);
	} while (xok != 1);

	FUNC3(bktr, 1);

	MT2032_XOGC = xogc;

	return 0;
}