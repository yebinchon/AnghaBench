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
struct TYPE_2__ {scalar_t__* c_cc; } ;

/* Variables and functions */
 int CERASE ; 
 scalar_t__ CINTR ; 
 scalar_t__ CKILL ; 
 char FUNC0 (char) ; 
 size_t VERASE ; 
 size_t VINTR ; 
 size_t VKILL ; 
 int erasech ; 
 scalar_t__ intrchar ; 
 scalar_t__ killch ; 
 TYPE_1__ mode ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (char*,char**) ; 

void
FUNC3(void)
{
	char *bp, *p, bs_char, buf[1024];

	bp = buf;
	p = FUNC2("kb", &bp);
	if (p == NULL || p[1] != '\0')
		p = FUNC2("bc", &bp);
	if (p != NULL && p[1] == '\0')
		bs_char = p[0];
	else if (FUNC1("bs"))
		bs_char = FUNC0('h');
	else
		bs_char = 0;

	if (erasech == 0 && bs_char != 0 && !FUNC1("os"))
		erasech = -1;
	if (erasech < 0)
		erasech = (bs_char != 0) ? bs_char : FUNC0('h');

	if (mode.c_cc[VERASE] == 0 || erasech != 0)
		mode.c_cc[VERASE] = erasech ? erasech : CERASE;

	if (mode.c_cc[VINTR] == 0 || intrchar != 0)
		 mode.c_cc[VINTR] = intrchar ? intrchar : CINTR;

	if (mode.c_cc[VKILL] == 0 || killch != 0)
		mode.c_cc[VKILL] = killch ? killch : CKILL;
}