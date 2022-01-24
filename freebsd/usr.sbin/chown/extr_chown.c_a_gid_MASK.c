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
struct group {int /*<<< orphan*/  gr_gid; } ;

/* Variables and functions */
 struct group* FUNC0 (char const*) ; 
 int /*<<< orphan*/  gid ; 
 char const* gname ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static void
FUNC2(const char *s)
{
	struct group *gr;

	if (*s == '\0')			/* Argument was "uid[:.]". */
		return;
	gname = s;
	gid = ((gr = FUNC0(s)) != NULL) ? gr->gr_gid : FUNC1(s, "group");
}