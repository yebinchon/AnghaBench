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
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 size_t FUNC3 (int,int /*<<< orphan*/ *,char*,size_t) ; 

char *
FUNC4(int errcode, regex_t *preg)
{
	static char *oe;
	size_t s;

	if (oe != NULL)
		FUNC1(oe);
	s = FUNC3(errcode, preg, NULL, 0);
	if ((oe = FUNC2(s)) == NULL)
		FUNC0(1, "malloc");
	(void)FUNC3(errcode, preg, oe, s);
	return (oe);
}