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
struct mwlstatfoo {int /*<<< orphan*/  (* print_verbose ) (struct mwlstatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* collect_tot ) (struct mwlstatfoo*) ;int /*<<< orphan*/  (* print_total ) (struct mwlstatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* update_tot ) (struct mwlstatfoo*) ;int /*<<< orphan*/  (* print_current ) (struct mwlstatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* collect_cur ) (struct mwlstatfoo*) ;int /*<<< orphan*/  (* print_header ) (struct mwlstatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* setfmt ) (struct mwlstatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* print_fields ) (struct mwlstatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* setifname ) (struct mwlstatfoo*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  S_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  catchalarm ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char**,char*) ; 
 struct mwlstatfoo* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ signalled ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mwlstatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mwlstatfoo*) ; 
 int /*<<< orphan*/  FUNC13 (struct mwlstatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mwlstatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mwlstatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct mwlstatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mwlstatfoo*) ; 
 int /*<<< orphan*/  FUNC18 (struct mwlstatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct mwlstatfoo*) ; 
 int /*<<< orphan*/  FUNC20 (struct mwlstatfoo*) ; 
 int /*<<< orphan*/  FUNC21 (struct mwlstatfoo*,int /*<<< orphan*/ ) ; 

int
FUNC22(int argc, char *argv[])
{
	struct mwlstatfoo *wf;
	int c;

	wf = FUNC4("mwl0", S_DEFAULT);
	while ((c = FUNC3(argc, argv, "i:lo:")) != -1) {
		switch (c) {
		case 'i':
			wf->setifname(wf, optarg);
			break;
		case 'l':
			wf->print_fields(wf, stdout);
			return 0;
		case 'o':
			wf->setfmt(wf, optarg);
			break;
		default:
			FUNC1(-1, "usage: %s [-a] [-i ifname] [-l] [-o fmt] [interval]\n", argv[0]);
			/*NOTREACHED*/
		}
	}
	argc -= optind;
	argv += optind;

	if (argc > 0) {
		u_long interval = FUNC10(argv[0], NULL, 0);
		int line, omask;

		if (interval < 1)
			interval = 1;
		FUNC7(SIGALRM, catchalarm);
		signalled = 0;
		FUNC0(interval);
	banner:
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
		FUNC2(stdout);
		omask = FUNC5(FUNC6(SIGALRM));
		if (!signalled)
			FUNC8(0);
		FUNC9(omask);
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