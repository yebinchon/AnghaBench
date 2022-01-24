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
 char* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static const char *FUNC2(const char *refname, int shorten_unambiguous)
{
	if (shorten_unambiguous)
		refname = FUNC0(refname, 0);
	else if (FUNC1(refname, "refs/heads/"))
		refname = refname + 11;
	else if (FUNC1(refname, "refs/"))
		refname = refname + 5;
	return refname;
}