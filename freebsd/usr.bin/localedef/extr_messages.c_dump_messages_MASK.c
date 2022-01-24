#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* yesstr; char* nostr; char* yesexpr; char* noexpr; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ msgs ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(void)
{
	FILE *f;
	char *ptr;

	if (msgs.yesstr == NULL) {
		FUNC4("missing field 'yesstr'");
		msgs.yesstr = "";
	}
	if (msgs.nostr == NULL) {
		FUNC4("missing field 'nostr'");
		msgs.nostr = "";
	}

	/*
	 * CLDR likes to add : separated lists for yesstr and nostr.
	 * Legacy Solaris code does not seem to grok this.  Fix it.
	 */
	if ((ptr = FUNC3(msgs.yesstr, ':')) != NULL)
		*ptr = 0;
	if ((ptr = FUNC3(msgs.nostr, ':')) != NULL)
		*ptr = 0;

	if ((f = FUNC1()) == NULL) {
		return;
	}

	if ((FUNC2(msgs.yesexpr, f) == EOF) ||
	    (FUNC2(msgs.noexpr, f) == EOF) ||
	    (FUNC2(msgs.yesstr, f) == EOF) ||
	    (FUNC2(msgs.nostr, f) == EOF)) {
		return;
	}
	FUNC0(f);
}