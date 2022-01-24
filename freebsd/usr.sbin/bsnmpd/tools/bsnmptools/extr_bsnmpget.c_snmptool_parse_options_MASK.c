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
struct snmp_toolinfo {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
#define  BSNMPGET 130 
#define  BSNMPSET 129 
#define  BSNMPWALK 128 
 int EOF ; 
 int FUNC0 (int,char**,char const*) ; 
 int /*<<< orphan*/  optarg ; 
 int FUNC1 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int FUNC5 (struct snmp_toolinfo*) ; 
 int FUNC6 (struct snmp_toolinfo*) ; 
 int FUNC7 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct snmp_toolinfo*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct snmp_toolinfo*) ; 
 int FUNC14 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (struct snmp_toolinfo*) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int program ; 
 int /*<<< orphan*/  FUNC23 () ; 

__attribute__((used)) static int32_t
FUNC24(struct snmp_toolinfo *snmptoolctx, int argc, char **argv)
{
	int32_t count, optnum = 0;
	int ch;
	const char *opts;

	switch (program) {
		case BSNMPWALK:
			opts = "dhnKA:b:C:I:i:l:M:N:o:P:p:r:s:t:U:v:";
			break;
		case BSNMPGET:
			opts = "aDdehnKA:b:C:I:i:l:M:N:o:P:p:r:s:t:U:v:";
			break;
		case BSNMPSET:
			opts = "adehnKA:b:C:I:i:l:o:P:r:s:t:U:v:";
			break;
		default:
			return (-1);
	}

	while ((ch = FUNC0(argc, argv, opts)) != EOF) {
		switch (ch) {
		case 'A':
			count = FUNC1(snmptoolctx, optarg);
			break;
		case 'a':
			count = FUNC19(snmptoolctx);
			break;
		case 'b':
			count = FUNC2(optarg);
			break;
		case 'D':
			count = FUNC5(snmptoolctx);
			break;
		case 'd':
			count = FUNC4();
			break;
		case 'e':
			count = FUNC6(snmptoolctx);
			break;
		case 'h':
			FUNC23();
			return (-2);
		case 'C':
			count = FUNC3(snmptoolctx, optarg);
			break;
		case 'I':
			count = FUNC8(snmptoolctx, optarg);
			break;
		case 'i':
			count = FUNC7(snmptoolctx, optarg);
			break;
		case 'K':
			count = FUNC9(snmptoolctx);
			break;
		case 'l':
			count = FUNC10(optarg);
			break;
		case 'M':
			count = FUNC11(snmptoolctx, optarg);
			break;
		case 'N':
			count = FUNC12(snmptoolctx, optarg);
			break;
		case 'n':
			count = FUNC13(snmptoolctx);
			break;
		case 'o':
			count = FUNC14(snmptoolctx, optarg);
			break;
		case 'P':
			count = FUNC16(snmptoolctx, optarg);
			break;
		case 'p':
			count = FUNC15(snmptoolctx, optarg);
			break;
		case 'r':
			count = FUNC17(optarg);
			break;
		case 's':
			count = FUNC18(optarg);
			break;
		case 't':
			count = FUNC20(optarg);
			break;
		case 'U':
			count = FUNC21(snmptoolctx, optarg);
			break;
		case 'v':
			count = FUNC22(optarg);
			break;
		case '?':
		default:
			FUNC23();
			return (-1);
		}
		if (count < 0)
			return (-1);
	    optnum += count;
	}

	return (optnum);
}