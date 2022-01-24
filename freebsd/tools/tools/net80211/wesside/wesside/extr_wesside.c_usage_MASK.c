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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(char* pname) {
	FUNC1("Usage: %s <opts>\n", pname);
	FUNC1("-h\t\tthis lame message\n");
	FUNC1("-i\t\t<iface>\n");
	FUNC1("-s\t\t<flood server ip>\n");
	FUNC1("-m\t\t<my ip>\n");
	FUNC1("-n\t\t<net ip>\n");
	FUNC1("-r\t\t<rtr mac>\n");
	FUNC1("-a\t\t<mymac>\n");
	FUNC1("-c\t\tdo not crack\n");
	FUNC1("-p\t\t<min prga>\n");
	FUNC1("-4\t\t64 bit key\n");
	FUNC1("-v\t\tvictim mac\n");
	FUNC1("-t\t\t<crack thresh>\n");
	FUNC1("-f\t\t<max chan>\n");
	FUNC0(0);
}