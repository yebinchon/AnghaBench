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
 int MB_CUR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(const char *s1, const char *s2)
{
	wchar_t *w1, *w2;
	int ret;

	if (MB_CUR_MAX == 1)
		return (FUNC2(s1, s2));
	if ((w1 = FUNC3(s1)) == NULL || (w2 = FUNC3(s2)) == NULL)
		FUNC0(1, NULL);	/* XXX */
	ret = FUNC4(w1, w2);
	FUNC1(w1);
	FUNC1(w2);
	return (ret);
}