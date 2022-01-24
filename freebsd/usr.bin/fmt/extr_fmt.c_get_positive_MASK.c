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
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC2(const char *s, const char *err_mess, int fussyP)
{
	char *t;
	long result = FUNC1(s, &t, 0);

	if (*t) {
		if (fussyP)
			goto Lose;
		else
			return 0;
	}
	if (result <= 0) {
Lose:		FUNC0(EX_USAGE, "%s", err_mess);
	}
	return (size_t)result;
}