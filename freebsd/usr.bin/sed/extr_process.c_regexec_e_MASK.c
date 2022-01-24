#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  regex_t ;
struct TYPE_3__ {size_t rm_so; size_t rm_eo; } ;

/* Variables and functions */
#define  REG_NOMATCH 128 
 int REG_STARTEND ; 
 int /*<<< orphan*/ * defpreg ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 TYPE_1__* match ; 
 scalar_t__ maxnsub ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,scalar_t__,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(regex_t *preg, const char *string, int eflags, int nomatch,
	size_t start, size_t stop)
{
	int eval;

	if (preg == NULL) {
		if (defpreg == NULL)
			FUNC0(1, "first RE may not be empty");
	} else
		defpreg = preg;

	/* Set anchors */
	match[0].rm_so = start;
	match[0].rm_eo = stop;

	eval = FUNC1(defpreg, string,
	    nomatch ? 0 : maxnsub + 1, match, eflags | REG_STARTEND);
	switch(eval) {
	case 0:
		return (1);
	case REG_NOMATCH:
		return (0);
	}
	FUNC0(1, "RE error: %s", FUNC2(eval, defpreg));
	/* NOTREACHED */
}