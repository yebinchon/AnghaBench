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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static char *
FUNC5(const char *s1, const char *s2, const char *s3)
{
	static char	*buf = NULL;
	static int	bufl = 0;
	int		f;

	f = FUNC4(s1) + FUNC4(s2) + FUNC4(s3) + 1;
	if (f > bufl) {
		if (buf)
			buf = (char *)FUNC1(buf, f);
		else
			buf = (char *)FUNC0(f);
	}
	if (!buf) {
		bufl = 0;
		return(NULL);
	}

	bufl = f;
	FUNC3(buf, s1);
	FUNC2(buf, s2);
	FUNC2(buf, s3);
	return(buf);
}