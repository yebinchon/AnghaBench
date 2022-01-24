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
typedef  scalar_t__ iconv_t ;

/* Variables and functions */
 scalar_t__ EMFILE ; 
 scalar_t__ ENFILE ; 
 int MAX_LIMIT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2(void)
{
	iconv_t cd[MAX_LIMIT];
	int i, ret;

	errno = 0;
	for (i = 0; i < MAX_LIMIT; i++) {
		cd[i] = FUNC1("ASCII", "UTF8");
		if (cd[i] == (iconv_t)-1)
			break;
	}

	ret = (cd[i] == (iconv_t)-1) && ((errno == ENFILE) ||
	    (errno == EMFILE))  ? 0 : 1;
	for (; i > 0; i--)
		FUNC0(cd[i]);
	return (ret);
}