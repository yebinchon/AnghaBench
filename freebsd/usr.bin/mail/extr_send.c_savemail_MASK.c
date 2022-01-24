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
typedef  int /*<<< orphan*/  time_t ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* myname ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

int
FUNC12(char name[], FILE *fi)
{
	FILE *fo;
	char buf[BUFSIZ];
	int i;
	time_t now;
	mode_t saved_umask;

	saved_umask = FUNC10(077);
	fo = FUNC1(name, "a");
	FUNC10(saved_umask);

	if (fo == NULL) {
		FUNC11("%s", name);
		return (-1);
	}
	(void)FUNC9(&now);
	FUNC5(fo, "From %s %s", myname, FUNC2(&now));
	while ((i = FUNC6(buf, 1, sizeof(buf), fi)) > 0)
		(void)FUNC7(buf, 1, i, fo);
	FUNC5(fo, "\n");
	(void)FUNC4(fo);
	if (FUNC3(fo))
		FUNC11("%s", name);
	(void)FUNC0(fo);
	FUNC8(fi);
	return (0);
}