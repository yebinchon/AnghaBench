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
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_LOCAL2 ; 
 int LOG_NDELAY ; 
 int LOG_PID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  Verbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* chat_file ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  echo ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 char* phone_num ; 
 char* phone_num2 ; 
 char* report_file ; 
 int /*<<< orphan*/ * report_fp ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeout ; 
 scalar_t__ to_log ; 
 int /*<<< orphan*/  to_stderr ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ verbose ; 

int
FUNC18(int argc, char *argv[])
{
    int option;

    FUNC16();

    while ((option = FUNC11(argc, argv, "ef:r:sSt:T:U:vV")) != -1) {
	switch (option) {
	case 'e':
	    ++echo;
	    break;

	case 'f':
	    if (chat_file != NULL)
		FUNC10(chat_file);
	    chat_file = FUNC4(optarg);
	    break;

	case 'r':
	    if (report_fp != NULL)
		FUNC7(report_fp);
	    if (report_file != NULL)
		FUNC10(report_file);
	    report_file = FUNC4(optarg);
	    report_fp = FUNC8(report_file, "a");
	    if (report_fp != NULL) {
		if (verbose)
		    FUNC9(report_fp, "Opening \"%s\"...\n", report_file);
	    } else
		FUNC6(2, "cannot open \"%s\" for appending", report_file);
	    break;

	case 's':
	    ++to_stderr;
	    break;

	case 'S':
	    to_log = 0;
	    break;

	case 't':
	    timeout = FUNC1(optarg);
	    break;

	case 'T':
	    if (phone_num != NULL)
		FUNC10(phone_num);
	    phone_num = FUNC4(optarg);
	    break;

	case 'U':
	    if (phone_num2 != NULL)
		FUNC10(phone_num2);
	    phone_num2 = FUNC4(optarg);
	    break;

	case 'v':
	    ++verbose;
	    break;

	case 'V':
	    ++Verbose;
	    break;

	default:
	    FUNC17();
	    break;
	}
    }

    argc -= optind;
    argv += optind;

/*
 * Default the report file to the stderr location
 */
    if (report_fp == NULL)
	report_fp = stderr;

    if (to_log) {
	FUNC13("chat", LOG_PID | LOG_NDELAY, LOG_LOCAL2);

	if (verbose)
	    FUNC14(FUNC0(LOG_INFO));
	else
	    FUNC14(FUNC0(LOG_WARNING));
    }

    if (chat_file != NULL) {
	if (*argv != NULL)
	    FUNC17();
	else {
            FUNC12();
	    FUNC5(chat_file);
	}
    } else {
	FUNC12();
	while (*argv != NULL && argc > 0) {
	    FUNC2(*argv);
	    argv++;
	    argc--;

	    if (*argv != NULL && argc > 0) {
		FUNC3(*argv);
		argv++;
		argc--;
	    }
	}
    }

    FUNC15(0);
    return 0;
}