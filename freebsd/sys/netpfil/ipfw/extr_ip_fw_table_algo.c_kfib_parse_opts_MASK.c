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
 int EINVAL ; 
 char* FUNC0 (char*,char) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC3(int *pfib, char *data)
{
	char *pdel, *pend, *s;
	int fibnum;

	if (data == NULL)
		return (0);
	if ((pdel = FUNC0(data, ' ')) == NULL)
		return (0);
	while (*pdel == ' ')
		pdel++;
	if (FUNC1(pdel, "fib=", 4) != 0)
		return (EINVAL);
	if ((s = FUNC0(pdel, ' ')) != NULL)
		*s++ = '\0';

	pdel += 4;
	/* Need \d+ */
	fibnum = FUNC2(pdel, &pend, 10);
	if (*pend != '\0')
		return (EINVAL);

	*pfib = fibnum;

	return (0);
}