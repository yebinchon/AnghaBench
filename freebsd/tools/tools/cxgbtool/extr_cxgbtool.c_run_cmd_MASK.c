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
 int FUNC0 (int,char**,int,char const*) ; 
 int FUNC1 (int,char**,int,char const*) ; 
 int FUNC2 (int,char**,int,char const*) ; 
 int FUNC3 (int,char**,int,char const*) ; 
 int FUNC4 (int,char**,int,char const*) ; 
 int FUNC5 (int,char**,int,char const*) ; 
 int FUNC6 (int,char**,int,char const*) ; 
 int FUNC7 (int,char**,int,char const*) ; 
 int FUNC8 (int,char**,int,char const*) ; 
 int FUNC9 (int,char**,int,char const*) ; 
 int FUNC10 (int,char**,int,char const*) ; 
 int FUNC11 (int,char**,int,char const*) ; 
 int FUNC12 (int,char**,int,char const*) ; 
 int FUNC13 (int,char**,int,char const*) ; 
 int FUNC14 (int,char**,int,char const*) ; 
 int FUNC15 (int,char**,int,char const*) ; 
 int FUNC16 (int,char**,int,char const*) ; 
 int FUNC17 (int,char**,int,char const*) ; 
 int FUNC18 (int,char**,int,char const*) ; 
 int FUNC19 (int,char**,int,char const*) ; 
 int FUNC20 (int,char**,int,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int FUNC22 (int,char**,int,char const*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC24(int argc, char *argv[], const char *iff_name)
{
	int r = -1;

	if (!FUNC21(argv[2], "reg"))
		r = FUNC20(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "mdio"))
		r = FUNC13(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "mtus"))
		r = FUNC15(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "pm"))
		r = FUNC1(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "regdump"))
		r = FUNC3(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "tcamdump"))
		r = FUNC4(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "memdump"))
		r = FUNC2(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "meminfo"))
		r = FUNC14(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "context"))
		r = FUNC6(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "desc"))
		r = FUNC7(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "loadfw"))
		r = FUNC12(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "loadboot"))
		r = FUNC11(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "proto"))
		r = FUNC17(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "qset"))
		r = FUNC18(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "qsets"))
		r = FUNC19(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "trace"))
		r = FUNC22(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "pktsched"))
		r = FUNC16(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "tcb"))
		r = FUNC8(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "filter"))
		r = FUNC5(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "clearstats"))
		r = FUNC0(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "la"))
		r = FUNC10(argc, argv, 3, iff_name);
	else if (!FUNC21(argv[2], "ioqs"))
		r = FUNC9(argc, argv, 3, iff_name);

	if (r == -1)
		FUNC23(stderr);

	return (0);
}