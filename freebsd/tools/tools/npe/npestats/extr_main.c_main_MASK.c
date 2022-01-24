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
struct npestatfoo {int /*<<< orphan*/  (* print_verbose ) (struct npestatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* collect_tot ) (struct npestatfoo*) ;int /*<<< orphan*/  (* print_total ) (struct npestatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* update_tot ) (struct npestatfoo*) ;int /*<<< orphan*/  (* print_current ) (struct npestatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* collect_cur ) (struct npestatfoo*) ;int /*<<< orphan*/  (* print_header ) (struct npestatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* setfmt ) (struct npestatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* print_fields ) (struct npestatfoo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* setifname ) (struct npestatfoo*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  catchalarm ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,char**,char*) ; 
 struct npestatfoo* FUNC6 (char const*,int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC13 (struct npestatfoo*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct npestatfoo*) ; 
 int /*<<< orphan*/  FUNC15 (struct npestatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct npestatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct npestatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct npestatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct npestatfoo*) ; 
 int /*<<< orphan*/  FUNC20 (struct npestatfoo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct npestatfoo*) ; 
 int /*<<< orphan*/  FUNC22 (struct npestatfoo*) ; 
 int /*<<< orphan*/  FUNC23 (struct npestatfoo*,int /*<<< orphan*/ ) ; 

int
FUNC24(int argc, char *argv[])
{
	struct npestatfoo *wf;
	const char *ifname;
	int c, banner = 1;

	ifname = FUNC3("NPE");
	if (ifname == NULL)
		ifname = "npe0";
	wf = FUNC6(ifname, FUNC4("default"));
	while ((c = FUNC5(argc, argv, "bi:lo:z")) != -1) {
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
			wf->setfmt(wf, FUNC4(optarg));
			break;
		default:
			FUNC1(-1, "usage: %s [-a] [-i ifname] [-l] [-o fmt] [interval]\n", argv[0]);
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
		FUNC2(stdout);
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