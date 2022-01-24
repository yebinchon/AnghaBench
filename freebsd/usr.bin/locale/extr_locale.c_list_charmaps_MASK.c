#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t sl_cur; char** sl_str; } ;
struct TYPE_6__ {char** sl_str; size_t sl_cur; } ;
typedef  TYPE_1__ StringList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_5__* locales ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scmp ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC6 () ; 
 char* FUNC7 (char*,char) ; 
 char* FUNC8 (char*) ; 

void
FUNC9(void)
{
	size_t i;
	char *s, *cs;
	StringList *charmaps;

	/* initialize StringList */
	charmaps = FUNC6();
	if (charmaps == NULL)
		FUNC0(1, "could not allocate memory");

	/* fetch locales list */
	FUNC1();

	/* split codesets and build their list */
	for (i = 0; i < locales->sl_cur; i++) {
		s = locales->sl_str[i];
		if ((cs = FUNC7(s, '.')) != NULL) {
			cs++;
			if (FUNC5(charmaps, cs) == NULL)
				FUNC4(charmaps, cs);
		}
	}

	/* add US-ASCII, if not yet added */
	if (FUNC5(charmaps, "US-ASCII") == NULL)
		FUNC4(charmaps, FUNC8("US-ASCII"));

	/* sort the list */
	FUNC3(charmaps->sl_str, charmaps->sl_cur, sizeof(char *), scmp);

	/* print results */
	for (i = 0; i < charmaps->sl_cur; i++) {
		FUNC2("%s\n", charmaps->sl_str[i]);
	}
}