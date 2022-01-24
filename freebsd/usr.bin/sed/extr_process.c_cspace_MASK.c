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
typedef  enum e_spflag { ____Placeholder_e_spflag } e_spflag ;
struct TYPE_3__ {size_t len; size_t blen; char* space; char* back; } ;
typedef  TYPE_1__ SPACE ;

/* Variables and functions */
 int REPLACE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (char*,size_t) ; 

void
FUNC3(SPACE *sp, const char *p, size_t len, enum e_spflag spflag)
{
	size_t tlen;

	/* Make sure SPACE has enough memory and ramp up quickly. */
	tlen = sp->len + len + 1;
	if (tlen > sp->blen) {
		sp->blen = tlen + 1024;
		if ((sp->space = sp->back = FUNC2(sp->back, sp->blen)) ==
		    NULL)
			FUNC0(1, "realloc");
	}

	if (spflag == REPLACE)
		sp->len = 0;

	FUNC1(sp->space + sp->len, p, len);

	sp->space[sp->len += len] = '\0';
}