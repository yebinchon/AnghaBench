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
 int FUNC0 (char*,char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *
FUNC3(char *s, size_t maxlen)
{
	char *p;
	int error;

	p = FUNC2(maxlen + 1, M_SMBSTR, M_WAITOK);
	error = FUNC0(s, p, maxlen + 1, NULL);
	if (error) {
		FUNC1(p, M_SMBSTR);
		return (NULL);
	}
	return p;
}