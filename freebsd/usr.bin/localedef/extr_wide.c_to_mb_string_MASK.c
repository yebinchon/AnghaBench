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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int mb_cur_max ; 
 int FUNC2 (char*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 

char *
FUNC5(const wchar_t *wcs)
{
	char	*mbs;
	char	*ptr;
	int	len;

	mbs = FUNC1((FUNC4(wcs) * mb_cur_max) + 1);
	if (mbs == NULL) {
		FUNC3("out of memory");
		return (NULL);
	}
	ptr = mbs;
	while (*wcs) {
		if ((len = FUNC2(ptr, *wcs)) < 0) {
			INTERR;
			FUNC0(mbs);
			return (NULL);
		}
		wcs++;
		ptr += len;
	}
	*ptr = 0;
	return (mbs);
}