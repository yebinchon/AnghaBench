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
struct oiddescription {char* description; } ;
struct oid {int len; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  lookup ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_MAXNAME ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (int*,int,char**,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(const struct oid *o, struct oiddescription *od)
{
	int lookup[CTL_MAXNAME + 2];
	char *newline;
	size_t odlen;

	lookup[0] = 0;
	lookup[1] = 5;
	FUNC1(lookup + 2, o->id, o->len * sizeof(lookup[0]));
	odlen = sizeof(od->description);
	if (FUNC3(lookup, 2 + o->len, &od->description, &odlen, 0, 0) != 0) {
		if (errno == ENOENT)
			return (false);
		FUNC0(1, "sysctl(oiddescr)");
	}

	newline = FUNC2(od->description, '\n');
	if (newline != NULL)
		*newline = '\0';

	return (*od->description != '\0');
}