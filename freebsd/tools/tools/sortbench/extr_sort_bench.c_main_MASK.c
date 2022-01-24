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
typedef  enum test { ____Placeholder_test } test ;
typedef  enum sort { ____Placeholder_sort } sort ;

/* Variables and functions */
 int INVALID_ALG ; 
 int INVALID_TEST ; 
 int NARGS ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

int
FUNC6(int argc, char *argv[])
{
	const char *progname = argv[0];
	int runs, elts;
	if (argc != NARGS)
		FUNC5(progname);

	enum sort s = FUNC1(argv[1]);
	if (s == INVALID_ALG)
		FUNC5(progname);

	enum test t = FUNC2(argv[2]);
	if (t == INVALID_TEST)
		FUNC5(progname);

	runs = FUNC0(argv[3]);
	elts = FUNC3(2, FUNC0(argv[4]));

	FUNC4(s, t, runs, elts);
}