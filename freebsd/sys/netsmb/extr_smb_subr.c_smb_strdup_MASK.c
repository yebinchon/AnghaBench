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
 int /*<<< orphan*/  M_SMBSTR ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,size_t) ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 

char *
FUNC3(const char *s)
{
	char *p;
	size_t len;

	len = s ? FUNC2(s) + 1 : 1;
	p = FUNC1(len, M_SMBSTR, M_WAITOK);
	if (s)
		FUNC0(s, p, len);
	else
		*p = 0;
	return p;
}