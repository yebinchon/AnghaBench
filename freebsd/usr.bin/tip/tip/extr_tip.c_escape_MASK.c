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
struct TYPE_3__ {int e_char; int e_flags; int /*<<< orphan*/  (* e_func ) (int) ;} ;
typedef  TYPE_1__ esctable_t ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  ESCAPE ; 
 int /*<<< orphan*/  FD ; 
 int PRIV ; 
 int STRIP_PAR ; 
 char FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char) ; 
 TYPE_1__* etable ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ uid ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(void)
{
	int gch;
	esctable_t *p;
	char c = FUNC0(FUNC6(ESCAPE));

	gch = FUNC2();
	if (gch == EOF)
		return (EOF);
	gch = gch & STRIP_PAR;
	for (p = etable; p->e_char; p++)
		if (p->e_char == gch) {
			if ((p->e_flags&PRIV) && uid)
				continue;
			FUNC4("%s", FUNC1(c));
			(*p->e_func)(gch);
			return (0);
		}
	/* ESCAPE ESCAPE forces ESCAPE */
	if (c != gch)
		FUNC3(FD, &c, 1);
	return (gch);
}