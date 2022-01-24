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
struct headline {int /*<<< orphan*/ * l_date; int /*<<< orphan*/ * l_tty; int /*<<< orphan*/ * l_from; } ;

/* Variables and functions */
 int LINESIZE ; 
 void* FUNC0 (char*,char**) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

void
FUNC5(char line[], struct headline *hl, char pbuf[])
{
	char *cp, *sp;
	char word[LINESIZE];

	hl->l_from = NULL;
	hl->l_tty = NULL;
	hl->l_date = NULL;
	cp = line;
	sp = pbuf;
	/*
	 * Skip over "From" first.
	 */
	cp = FUNC2(cp, word);
	/*
	 * Check for missing return-path.
	 */
	if (FUNC1(cp)) {
		hl->l_date = FUNC0(cp, &sp);
		return;
	}
	cp = FUNC2(cp, word);
	if (FUNC3(word) > 0)
		hl->l_from = FUNC0(word, &sp);
	if (cp != NULL && FUNC4(cp, "tty", 3) == 0) {
		cp = FUNC2(cp, word);
		hl->l_tty = FUNC0(word, &sp);
	}
	if (cp != NULL)
		hl->l_date = FUNC0(cp, &sp);
}