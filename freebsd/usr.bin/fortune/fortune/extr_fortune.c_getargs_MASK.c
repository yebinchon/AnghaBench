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
 void* All_forts ; 
 int Debug ; 
 void* Equal_probs ; 
 void* FALSE ; 
 void* Find_files ; 
 void* Long_only ; 
 void* Match ; 
 void* Offend ; 
 int /*<<< orphan*/  REG_BASIC ; 
 int /*<<< orphan*/  Re_pat ; 
 void* Short_only ; 
 void* TRUE ; 
 void* Wait ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(int argc, char *argv[])
{
	int	ignore_case;
	char	*pat;
	int ch;

	ignore_case = FALSE;
	pat = NULL;

#ifdef DEBUG
	while ((ch = getopt(argc, argv, "aDefilm:osw")) != -1)
#else
	while ((ch = FUNC4(argc, argv, "aefilm:osw")) != -1)
#endif /* DEBUG */
		switch(ch) {
		case 'a':		/* any fortune */
			All_forts = TRUE;
			break;
#ifdef DEBUG
		case 'D':
			Debug++;
			break;
#endif /* DEBUG */
		case 'e':		/* scatter un-allocted prob equally */
			Equal_probs = TRUE;
			break;
		case 'f':		/* find fortune files */
			Find_files = TRUE;
			break;
		case 'l':		/* long ones only */
			Long_only = TRUE;
			Short_only = FALSE;
			break;
		case 'o':		/* offensive ones only */
			Offend = TRUE;
			break;
		case 's':		/* short ones only */
			Short_only = TRUE;
			Long_only = FALSE;
			break;
		case 'w':		/* give time to read */
			Wait = TRUE;
			break;
		case 'm':			/* dump out the fortunes */
			Match = TRUE;
			pat = optarg;
			break;
		case 'i':			/* case-insensitive match */
			ignore_case++;
			break;
		case '?':
		default:
			FUNC7();
		}
	argc -= optind;
	argv += optind;

	if (!FUNC2(argv, argc))
		FUNC1(1);	/* errors printed through form_file_list() */
	if (Find_files) {
		FUNC5();
		FUNC1(0);
	}
#ifdef DEBUG
	else if (Debug >= 1)
		print_file_list();
#endif /* DEBUG */

	if (pat != NULL) {
		int error;

		if (ignore_case)
			pat = FUNC0(pat);
		error = FUNC6(&Re_pat, pat, REG_BASIC);
		if (error) {
			FUNC3(stderr, "regcomp(%s) fails\n", pat);
			FUNC1(1);
		}
	}
}