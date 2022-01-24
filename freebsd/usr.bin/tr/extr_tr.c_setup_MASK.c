#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cset {int dummy; } ;
struct TYPE_4__ {char* str; int /*<<< orphan*/  lastch; } ;
typedef  TYPE_1__ STR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cset*,int /*<<< orphan*/ ,int) ; 
 struct cset* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct cset*) ; 
 int /*<<< orphan*/  FUNC4 (struct cset*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static struct cset *
FUNC8(char *arg, STR *str, int cflag, int Cflag)
{
	struct cset *cs;

	cs = FUNC2();
	if (cs == NULL)
		FUNC5(1, NULL);
	str->str = arg;
	while (FUNC6(str))
		FUNC0(cs, str->lastch);
	if (Cflag)
		FUNC1(cs, FUNC7("rune"), true);
	if (cflag || Cflag)
		FUNC4(cs);
	FUNC3(cs);
	return (cs);
}