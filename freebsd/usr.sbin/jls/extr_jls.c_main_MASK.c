#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lastjid ;
typedef  int /*<<< orphan*/  jid ;
struct TYPE_2__ {int jp_flags; char* jp_name; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int JAIL_DYING ; 
 int /*<<< orphan*/  JLS_XO_VERSION ; 
 int JP_OPT ; 
 int JP_USER ; 
 int PRINT_DEFAULT ; 
 int PRINT_HEADER ; 
 int PRINT_JAIL_NAME ; 
 int PRINT_NAMEVAL ; 
 int PRINT_QUOTED ; 
 int PRINT_SKIP ; 
 int PRINT_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (char*) ; 
 int FUNC4 (int,char**,char*) ; 
 void* ip4_ok ; 
 void* ip6_ok ; 
 int /*<<< orphan*/  jail_errmsg ; 
 int nparams ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/ * param_parent ; 
 TYPE_1__* params ; 
 int FUNC5 (int,int) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 (int,char**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

int
FUNC19(int argc, char **argv)
{
	char *dot, *ep, *jname, *pname;
	int c, i, jflags, jid, lastjid, pflags, spc;

	argc = FUNC17(argc, argv);
	if (argc < 0)
		FUNC2(1);

        FUNC18(JLS_XO_VERSION);
	jname = NULL;
	pflags = jflags = jid = 0;
	while ((c = FUNC4(argc, argv, "adj:hNnqsv")) >= 0)
		switch (c) {
		case 'a':
		case 'd':
			jflags |= JAIL_DYING;
			break;
		case 'j':
			jid = FUNC9(optarg, &ep, 10);
			if (!jid || *ep) {
				jid = 0;
				jname = optarg;
			}
			break;
		case 'h':
			pflags = (pflags & ~(PRINT_SKIP | PRINT_VERBOSE)) |
			    PRINT_HEADER;
			break;
		case 'N':
			pflags |= PRINT_JAIL_NAME;
			break;
		case 'n':
			pflags = (pflags & ~PRINT_VERBOSE) | PRINT_NAMEVAL;
			break;
		case 'q':
			pflags |= PRINT_QUOTED;
			break;
		case 's':
			pflags = (pflags & ~(PRINT_HEADER | PRINT_VERBOSE)) |
			    PRINT_NAMEVAL | PRINT_QUOTED | PRINT_SKIP;
			break;
		case 'v':
			pflags = (pflags &
			    ~(PRINT_HEADER | PRINT_NAMEVAL | PRINT_SKIP)) |
			    PRINT_VERBOSE;
			break;
		default:
			FUNC13(1, "usage: jls [-dhNnqv] [-j jail] [param ...]");
		}

#ifdef INET6
	ip6_ok = feature_present("inet6");
#endif
#ifdef INET
	ip4_ok = feature_present("inet");
#endif

	/* Add the parameters to print. */
	if (optind == argc) {
		if (pflags & (PRINT_HEADER | PRINT_NAMEVAL))
			FUNC0("all", NULL, (size_t)0, NULL, JP_USER);
		else if (pflags & PRINT_VERBOSE) {
			FUNC0("jid", NULL, (size_t)0, NULL, JP_USER);
			FUNC0("host.hostname", NULL, (size_t)0, NULL,
			    JP_USER);
			FUNC0("path", NULL, (size_t)0, NULL, JP_USER);
			FUNC0("name", NULL, (size_t)0, NULL, JP_USER);
			FUNC0("dying", NULL, (size_t)0, NULL, JP_USER);
			FUNC0("cpuset.id", NULL, (size_t)0, NULL, JP_USER);
#ifdef INET
			if (ip4_ok)
				add_param("ip4.addr", NULL, (size_t)0, NULL,
				    JP_USER);
#endif
#ifdef INET6
			if (ip6_ok)
				add_param("ip6.addr", NULL, (size_t)0, NULL,
				    JP_USER | JP_OPT);
#endif
		} else {
			pflags |= PRINT_DEFAULT;
			if (pflags & PRINT_JAIL_NAME)
				FUNC0("name", NULL, (size_t)0, NULL, JP_USER);
			else
				FUNC0("jid", NULL, (size_t)0, NULL, JP_USER);
#ifdef INET
			if (ip4_ok)
				add_param("ip4.addr", NULL, (size_t)0, NULL,
				    JP_USER);
#endif
			FUNC0("host.hostname", NULL, (size_t)0, NULL,
			    JP_USER);
			FUNC0("path", NULL, (size_t)0, NULL, JP_USER);
		}
	} else {
		pflags &= ~PRINT_VERBOSE;
		while (optind < argc)
			FUNC0(argv[optind++], NULL, (size_t)0, NULL,
			    JP_USER);
	}

	if (pflags & PRINT_SKIP) {
		/* Check for parameters with jailsys parents. */
		for (i = 0; i < nparams; i++) {
			if ((params[i].jp_flags & JP_USER) &&
			    (dot = FUNC6(params[i].jp_name, '.'))) {
				pname = FUNC1((dot - params[i].jp_name) + 1);
				FUNC7(pname, params[i].jp_name,
				    (dot - params[i].jp_name) + 1);
				param_parent[i] = FUNC0(pname,
				    NULL, (size_t)0, NULL, JP_OPT);
			}
		}
	}

	/* Add the index key parameters. */
	if (jid != 0)
		FUNC0("jid", &jid, sizeof(jid), NULL, 0);
	else if (jname != NULL)
		FUNC0("name", jname, FUNC8(jname), NULL, 0);
	else
		FUNC0("lastjid", &lastjid, sizeof(lastjid), NULL, 0);

	/* Print a header line if requested. */
	if (pflags & PRINT_VERBOSE) {
		FUNC12("{T:/%3s}{T:JID}{P:  }{T:Hostname}{Pd:/%22s}{T:Path}\n",
		        "", "");
		FUNC12("{P:/%8s}{T:Name}{Pd:/%26s}{T:State}\n", "", "");
		FUNC12("{P:/%8s}{T:CPUSetID}\n", "");
		FUNC12("{P:/%8s}{T:IP Address(es)}\n", "");
	}
	else if (pflags & PRINT_DEFAULT)
		if (pflags & PRINT_JAIL_NAME)
			FUNC12("{P: }{T:JID/%-15s}{P: }{T:IP Address/%-15s}"
			        "{P: }{T:Hostname/%-29s}{P: }{T:Path}\n");
		else
			FUNC12("{T:JID/%6s}{P:  }{T:IP Address}{P:/%6s}"
			        "{T:Hostname}{P:/%22s}{T:Path}\n", "", "");
	else if (pflags & PRINT_HEADER) {
		for (i = spc = 0; i < nparams; i++)
			if (params[i].jp_flags & JP_USER) {
				if (spc)
					FUNC12("{P: }");
				else
					spc = 1;
				FUNC12(params[i].jp_name);
			}
		FUNC12("{P:\n}");
	}

	FUNC15("jail-information");
	FUNC16("jail");
	/* Fetch the jail(s) and print the parameters. */
	if (jid != 0 || jname != NULL) {
		if (FUNC5(pflags, jflags) < 0)
			FUNC13(1, "%s", jail_errmsg);
	} else {
		for (lastjid = 0;
		     (lastjid = FUNC5(pflags, jflags)) >= 0; )
			;
		if (errno != 0 && errno != ENOENT)
			FUNC13(1, "%s", jail_errmsg);
	}
	FUNC11("jail");
	FUNC10("jail-information");
	FUNC14();
	return (0);
}