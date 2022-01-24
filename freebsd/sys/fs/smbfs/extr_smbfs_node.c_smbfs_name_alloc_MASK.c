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
typedef  char u_char ;

/* Variables and functions */
 int /*<<< orphan*/  M_SMBNODENAME ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC2(const u_char *name, int nmlen)
{
	u_char *cp;

	nmlen++;
	cp = FUNC1(nmlen, M_SMBNODENAME, M_WAITOK);
	FUNC0(name, cp, nmlen - 1);
	cp[nmlen - 1] = 0;
	return cp;
}