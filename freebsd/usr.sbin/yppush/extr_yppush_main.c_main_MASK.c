#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  myname ;
struct TYPE_4__ {char* data; int size; } ;
typedef  TYPE_1__ DBT ;

/* Variables and functions */
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ YP_TRUE ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  handler ; 
 char* FUNC5 (int) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int skip_master ; 
 char* FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int verbose ; 
 void* yp_dir ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char**) ; 
 scalar_t__ FUNC16 (char*,char*,TYPE_1__*,TYPE_1__*,int) ; 
 char* yppush_domain ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int yppush_jobs ; 
 char* yppush_mapname ; 
 char* yppush_master ; 
 void* yppush_timeout ; 
 int /*<<< orphan*/  yppush_transid ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,char*,int /*<<< orphan*/  (*) (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 

int
FUNC20(int argc, char *argv[])
{
	int ch;
	DBT key, data;
	char myname[MAXHOSTNAMELEN];
	struct hostlist {
		char *name;
		struct hostlist *next;
	};
	struct hostlist *yppush_hostlist = NULL;
	struct hostlist *tmp;

	while ((ch = FUNC4(argc, argv, "d:j:p:h:t:v")) != -1) {
		switch (ch) {
		case 'd':
			yppush_domain = optarg;
			break;
		case 'j':
			yppush_jobs = FUNC1(optarg);
			if (yppush_jobs <= 0)
				yppush_jobs = 1;
			break;
		case 'p':
			yp_dir = optarg;
			break;
		case 'h': /* we can handle multiple hosts */
			if ((tmp = (struct hostlist *)FUNC5(sizeof(struct hostlist))) == NULL) {
				FUNC14("malloc failed");
				FUNC17(1);
			}
			tmp->name = FUNC7(optarg);
			tmp->next = yppush_hostlist;
			yppush_hostlist = tmp;
			break;
		case 't':
			yppush_timeout = FUNC1(optarg);
			break;
		case 'v':
			verbose++;
			break;
		default:
			FUNC13();
			break;
		}
	}

	argc -= optind;
	argv += optind;

	yppush_mapname = argv[0];

	if (yppush_mapname == NULL) {
	/* "No guts, no glory." */
		FUNC13();
	}

	/*
	 * If no domain was specified, try to find the default
	 * domain. If we can't find that, we're doomed and must bail.
	 */
	if (yppush_domain == NULL) {
		char *yppush_check_domain;
		if (!FUNC15(&yppush_check_domain) &&
			!FUNC0(&yppush_check_domain)) {
			FUNC14("no domain specified and NIS not running");
			FUNC13();
		} else
			FUNC15(&yppush_domain);
	}

	/* Check to see that we are the master for this map. */

	if (FUNC3 ((char *)&myname, sizeof(myname))) {
		FUNC14("failed to get name of local host: %s",
			FUNC8(errno));
		FUNC17(1);
	}

	key.data = "YP_MASTER_NAME";
	key.size = sizeof("YP_MASTER_NAME") - 1;

	if (FUNC16(yppush_domain, yppush_mapname,
			  &key, &data, 1) != YP_TRUE) {
		FUNC14("couldn't open %s map: %s", yppush_mapname,
			 FUNC8(errno));
		FUNC17(1);
	}

	if (FUNC10(myname, data.data, data.size) == 0) {
		/* I am master server, and no explicit host list was
		   specified: do not push map to myself -- this will
		   fail with YPPUSH_AGE anyway. */
		if (yppush_hostlist == NULL)
			skip_master = 1;
	} else {
		FUNC14("warning: this host is not the master for %s",
							yppush_mapname);
#ifdef NITPICKY
		yppush_exit(1);
#endif
	}

	yppush_master = FUNC5(data.size + 1);
	FUNC11(yppush_master, data.data, data.size);
	yppush_master[data.size] = '\0';

	/* Install some handy handlers. */
	FUNC6(SIGTERM, handler);
	FUNC6(SIGINT, handler);

	/* set initial transaction ID */
	yppush_transid = FUNC12((time_t *)NULL);

	if (yppush_hostlist) {
	/*
	 * Host list was specified on the command line:
	 * kick off the transfers by hand.
	 */
		tmp = yppush_hostlist;
		while (tmp) {
			FUNC18(YP_TRUE, NULL, 0, tmp->name,
			    FUNC9(tmp->name), NULL);
			tmp = tmp->next;
		}
	} else {
	/*
	 * Do a yp_all() on the ypservers map and initiate a ypxfr
	 * for each one.
	 */
		FUNC19("ypservers", yppush_domain,
			      "localhost", yppush_foreach);
	}

	if (verbose > 1)
		FUNC14("all jobs dispatched");

	/* All done -- normal exit. */
	FUNC17(0);

	/* Just in case. */
	FUNC2(0);
}