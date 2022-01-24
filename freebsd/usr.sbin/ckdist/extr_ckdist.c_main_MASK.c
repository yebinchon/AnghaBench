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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_4__ {int fts_info; char* fts_path; size_t fts_errno; int /*<<< orphan*/  fts_name; int /*<<< orphan*/  fts_level; } ;
typedef  TYPE_1__ FTSENT ;
typedef  int /*<<< orphan*/  FTS ;

/* Variables and functions */
#define  FTS_D 133 
#define  FTS_DC 132 
#define  FTS_DNR 131 
#define  FTS_ERR 130 
#define  FTS_F 129 
 int /*<<< orphan*/  FTS_LOGICAL ; 
#define  FTS_NS 128 
 int /*<<< orphan*/  FTS_ROOTLEVEL ; 
 int /*<<< orphan*/  FTS_SKIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*) ; 
 int FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,char**,char*) ; 
 scalar_t__ FUNC13 (char*) ; 
 int opt_all ; 
 char* opt_dir ; 
 int opt_exist ; 
 int opt_ignore ; 
 void* opt_name ; 
 int opt_recurse ; 
 int opt_silent ; 
 int opt_type ; 
 void* optarg ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC14 (char*,struct stat*) ; 
 char** sys_errlist ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int
FUNC17(int argc, char *argv[])
{
    static char *arg[2];
    struct stat sb;
    FTS *ftsp;
    FTSENT *f;
    int rval, c, type;

    while ((c = FUNC12(argc, argv, "ad:in:rst:x")) != -1)
	switch (c) {
	case 'a':
	    opt_all = 1;
	    break;
	case 'd':
	    opt_dir = optarg;
	    break;
	case 'i':
	    opt_ignore = 1;
	    break;
	case 'n':
	    opt_name = optarg;
	    break;
	case 'r':
	    opt_recurse = 1;
	    break;
	case 's':
	    opt_silent = 1;
	    break;
	case 't':
	    if ((opt_type = FUNC4(optarg)) == 0) {
		FUNC16("illegal argument to -t option");
		FUNC15();
	    }
	    break;
	case 'x':
	    opt_exist = 1;
	    break;
	default:
	    FUNC15();
	}
    argc -= optind;
    argv += optind;
    if (argc < 1)
	FUNC15();
    if (opt_dir) {
	if (FUNC14(opt_dir, &sb))
	    FUNC5(2, "%s", opt_dir);
	if (!FUNC0(sb.st_mode))
	    FUNC6(2, "%s: not a directory", opt_dir);
    }
    rval = 0;
    do {
	if (FUNC13(*argv))
	    rval |= FUNC2(*argv, opt_type);
	else if (FUNC14(*argv, &sb))
	    rval |= FUNC7(*argv, NULL);
	else if (FUNC1(sb.st_mode))
	    rval |= FUNC2(*argv, opt_type);
	else {
	    arg[0] = *argv;
	    if ((ftsp = FUNC9(arg, FTS_LOGICAL, NULL)) == NULL)
		FUNC5(2, "fts_open");
	    while ((f = FUNC10(ftsp)) != NULL)
		switch (f->fts_info) {
		case FTS_DC:
		    rval = FUNC7(f->fts_path, "Directory causes a cycle");
		    break;
		case FTS_DNR:
		case FTS_ERR:
		case FTS_NS:
		    rval = FUNC7(f->fts_path, sys_errlist[f->fts_errno]);
		    break;
		case FTS_D:
		    if (!opt_recurse && f->fts_level > FTS_ROOTLEVEL &&
			FUNC11(ftsp, f, FTS_SKIP))
			FUNC5(2, "fts_set");
		    break;
		case FTS_F:
		    if ((type = FUNC3(f->fts_name)) != 0 &&
			(!opt_type || type == opt_type))
			rval |= FUNC2(f->fts_path, type);
		    break;
                default: ;
		}
	    if (errno)
		FUNC5(2, "fts_read");
	    if (FUNC8(ftsp))
		FUNC5(2, "fts_close");
	}
    } while (*++argv);
    return rval;
}