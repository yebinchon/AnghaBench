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
 int FALSE ; 
 int MOUSE_MAXBUTTON ; 
 int TRUE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/ * bstate ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/ ** mstate ; 
 int* p2l ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(char *arg)
{
    int pbutton;
    int lbutton;
    char *s;

    while (*arg) {
	arg = FUNC3(arg);
	s = arg;
	while (FUNC1(*arg))
	    ++arg;
	arg = FUNC3(arg);
	if ((arg <= s) || (*arg != '='))
	    return (FALSE);
	lbutton = FUNC0(s);

	arg = FUNC3(++arg);
	s = arg;
	while (FUNC1(*arg))
	    ++arg;
	if ((arg <= s) || (!FUNC2(*arg) && (*arg != '\0')))
	    return (FALSE);
	pbutton = FUNC0(s);

	if ((lbutton <= 0) || (lbutton > MOUSE_MAXBUTTON))
	    return (FALSE);
	if ((pbutton <= 0) || (pbutton > MOUSE_MAXBUTTON))
	    return (FALSE);
	p2l[pbutton - 1] = 1 << (lbutton - 1);
	mstate[lbutton - 1] = &bstate[pbutton - 1];
    }

    return (TRUE);
}