#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct TYPE_3__ {char* match; } ;

/* Variables and functions */
 int LS_RECURSIVE ; 
 int ls_options ; 
 scalar_t__ FUNC0 (char const*,char const*,int) ; 
 TYPE_2__ pathspec ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC3(const char *base, int baselen, const char *pathname)
{
	int i;

	if (ls_options & LS_RECURSIVE)
		return 1;

	if (!pathspec.nr)
		return 0;

	for (i = 0; i < pathspec.nr; i++) {
		const char *spec = pathspec.items[i].match;
		int len, speclen;

		if (FUNC2(base, spec, baselen))
			continue;
		len = FUNC1(pathname);
		spec += baselen;
		speclen = FUNC1(spec);
		if (speclen <= len)
			continue;
		if (spec[len] && spec[len] != '/')
			continue;
		if (FUNC0(pathname, spec, len))
			continue;
		return 1;
	}
	return 0;
}