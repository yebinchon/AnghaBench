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
typedef  char* u_long ;
struct nodeinfo {int id; char* name; char* type; int hooks; } ;
struct ng_mesg {scalar_t__ data; } ;
struct namelist {int numnames; struct nodeinfo* nodeinfo; } ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_2__ {int (* func ) (int,char**) ;} ;

/* Variables and functions */
 int CMDRTN_ERROR ; 
 int CMDRTN_OK ; 
 int CMDRTN_USAGE ; 
 int /*<<< orphan*/  NGM_GENERIC_COOKIE ; 
 int /*<<< orphan*/  NGM_LISTNAMES ; 
 int /*<<< orphan*/  NGM_LISTNODES ; 
 int NG_PATHSIZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct ng_mesg**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* UNNAMED ; 
 int /*<<< orphan*/  csock ; 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*) ; 
 int FUNC3 (int,char**,char*) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_1__ show_cmd ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 int FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(int ac, char **av)
{
	struct ng_mesg *resp;
	struct namelist *nlist;
	struct nodeinfo *ninfo;
	int list_hooks = 0;
	int named_only = 0;
	int ch, rtn = CMDRTN_OK;

	/* Get options */
	optind = 1;
	while ((ch = FUNC3(ac, av, "ln")) != -1) {
		switch (ch) {
		case 'l':
			list_hooks = 1;
			break;
		case 'n':
			named_only = 1;
			break;
		case '?':
		default:
			return (CMDRTN_USAGE);
			break;
		}
	}
	ac -= optind;
	av += optind;

	/* Get arguments */
	switch (ac) {
	case 0:
		break;
	default:
		return (CMDRTN_USAGE);
	}

	/* Get list of nodes */
	if (FUNC1(csock, ".", NGM_GENERIC_COOKIE,
	    named_only ? NGM_LISTNAMES : NGM_LISTNODES, NULL, 0) < 0) {
		FUNC7("send msg");
		return (CMDRTN_ERROR);
	}
	if (FUNC0(csock, &resp, NULL) < 0) {
		FUNC7("recv msg");
		return (CMDRTN_ERROR);
	}

	/* Show each node */
	nlist = (struct namelist *) resp->data;
	FUNC4("There are %d total %snodes:\n",
	    nlist->numnames, named_only ? "named " : "");
	ninfo = nlist->nodeinfo;
	if (list_hooks) {
		char	path[NG_PATHSIZ];
		char	*argv[2] = { "show", path };

		while (nlist->numnames > 0) {
			FUNC5(path, sizeof(path),
			    "[%lx]:", (u_long)ninfo->id);
			if ((rtn = (*show_cmd.func)(2, argv)) != CMDRTN_OK)
				break;
			ninfo++;
			nlist->numnames--;
			if (nlist->numnames > 0)
				FUNC4("\n");
		}
	} else {
		while (nlist->numnames > 0) {
			if (!*ninfo->name)
				FUNC5(ninfo->name, sizeof(ninfo->name),
				    "%s", UNNAMED);
			FUNC4("  Name: %-15s Type: %-15s ID: %08x   "
			    "Num hooks: %d\n",
			    ninfo->name, ninfo->type, ninfo->id, ninfo->hooks);
			ninfo++;
			nlist->numnames--;
		}
	}

	/* Done */
	FUNC2(resp);
	return (rtn);
}