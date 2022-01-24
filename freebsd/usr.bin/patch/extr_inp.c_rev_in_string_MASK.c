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
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/ * revision ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static bool
FUNC3(const char *string)
{
	const char	*s;
	size_t		patlen;

	if (revision == NULL)
		return true;
	patlen = FUNC1(revision);
	if (FUNC2(string, revision, patlen) && FUNC0((unsigned char)string[patlen]))
		return true;
	for (s = string; *s; s++) {
		if (FUNC0((unsigned char)*s) && FUNC2(s + 1, revision, patlen) &&
		    FUNC0((unsigned char)s[patlen + 1])) {
			return true;
		}
	}
	return false;
}