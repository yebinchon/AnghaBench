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
typedef  int u_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 

void
FUNC4(u_int32_t mb)
{

	FUNC3("mpt mailbox: (0x%x) State %s  WhoInit %s\n",
	    mb, FUNC1(mb), FUNC2(FUNC0(mb)));
}