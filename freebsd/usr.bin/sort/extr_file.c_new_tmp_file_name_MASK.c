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
 scalar_t__ FUNC0 () ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char const*,int,unsigned long) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* tmpdir ; 

char *
FUNC5(void)
{
	static size_t tfcounter = 0;
	static const char *fn = ".bsdsort.";
	char *ret;
	size_t sz;

	sz = FUNC3(tmpdir) + 1 + FUNC3(fn) + 32 + 1;
	ret = FUNC1(sz);

	FUNC2(ret, "%s/%s%d.%lu", tmpdir, fn, (int) FUNC0(), (unsigned long)(tfcounter++));
	FUNC4(ret);
	return (ret);
}