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
typedef  int u_long ;
struct athaggrstatfoo {int /*<<< orphan*/  (* print_verbose ) (struct athaggrstatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* collect_tot ) (struct athaggrstatfoo*) ;int /*<<< orphan*/  (* print_total ) (struct athaggrstatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* update_tot ) (struct athaggrstatfoo*) ;int /*<<< orphan*/  (* print_current ) (struct athaggrstatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* collect_cur ) (struct athaggrstatfoo*) ;int /*<<< orphan*/  (* print_header ) (struct athaggrstatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* zerostats ) (struct athaggrstatfoo*) ;int /*<<< orphan*/  (* setfmt ) (struct athaggrstatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* print_fields ) (struct athaggrstatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* setifname ) (struct athaggrstatfoo*,char*) ;} ;

/* Variables and functions */
 char* ATH_DEFAULT ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct athaggrstatfoo* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  catchalarm ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ signalled ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct athaggrstatfoo*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct athaggrstatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct athaggrstatfoo*) ; 
 int /*<<< orphan*/  FUNC16 (struct athaggrstatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct athaggrstatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct athaggrstatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct athaggrstatfoo*) ; 
 int /*<<< orphan*/  FUNC20 (struct athaggrstatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct athaggrstatfoo*) ; 
 int /*<<< orphan*/  FUNC22 (struct athaggrstatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct athaggrstatfoo*) ; 
 int /*<<< orphan*/  FUNC24 (struct athaggrstatfoo*) ; 

int
FUNC25(int argc, char *argv[])
{
	struct athaggrstatfoo *wf;
	const char *ifname;
	int c, banner = 1;

	ifname = FUNC4("ATH");
	if (ifname == NULL)
		ifname = ATH_DEFAULT;
	wf = FUNC1(ifname, FUNC5("default"));
	while ((c = FUNC6(argc, argv, "bi:lo:z")) != -1) {
		switch (c) {
		case 'b':
			banner = 0;
			break;
		case 'i':
			wf->setifname(wf, optarg);
			break;
		case 'l':
			wf->print_fields(wf, stdout);
			return 0;
		case 'o':
			wf->setfmt(wf, FUNC5(optarg));
			break;
		case 'z':
			wf->zerostats(wf);
			break;
		default:
			FUNC2(-1, "usage: %s [-a] [-i ifname] [-l] [-o fmt] [-z] [interval]\n", argv[0]);
			/*NOTREACHED*/
		}
	}
	argc -= optind;
	argv += optind;

	if (argc > 0) {
		u_long interval = FUNC12(argv[0], NULL, 0);
		int line, omask;

		if (interval < 1)
			interval = 1;
		FUNC9(SIGALRM, catchalarm);
		signalled = 0;
		FUNC0(interval);
	banner:
		if (banner)
			wf->print_header(wf, stdout);
		line = 0;
	loop:
		if (line != 0) {
			wf->collect_cur(wf);
			wf->print_current(wf, stdout);
			wf->update_tot(wf);
		} else {
			wf->collect_tot(wf);
			wf->print_total(wf, stdout);
		}
		FUNC3(stdout);
		omask = FUNC7(FUNC8(SIGALRM));
		if (!signalled)
			FUNC10(0);
		FUNC11(omask);
		signalled = 0;
		FUNC0(interval);
		line++;
		if (line == 21)		/* XXX tty line count */
			goto banner;
		else
			goto loop;
		/*NOTREACHED*/
	} else {
		wf->collect_tot(wf);
		wf->print_verbose(wf, stdout);
	}
	return 0;
}