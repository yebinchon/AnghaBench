#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  size_t u_int ;
struct nodeinfo {size_t hooks; } ;
struct ng_mesg {scalar_t__ data; } ;
struct namelist {size_t numnames; TYPE_1__* nodeinfo; } ;
struct hooklist {TYPE_3__* link; struct nodeinfo nodeinfo; } ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_5__ {scalar_t__ id; } ;
struct TYPE_6__ {int /*<<< orphan*/  peerhook; TYPE_2__ nodeinfo; int /*<<< orphan*/  ourhook; } ;
struct TYPE_4__ {scalar_t__ id; char* name; scalar_t__ hooks; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CMDRTN_ERROR ; 
 int CMDRTN_OK ; 
 int CMDRTN_USAGE ; 
 int /*<<< orphan*/  NGM_GENERIC_COOKIE ; 
 int /*<<< orphan*/  NGM_LISTHOOKS ; 
 int /*<<< orphan*/  NGM_LISTNODES ; 
 int NG_PATHSIZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct ng_mesg**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* UNNAMED ; 
 int /*<<< orphan*/  csock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ng_mesg*) ; 
 int FUNC6 (int,char**,char*) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int
FUNC9(int ac, char **av)
{
	struct ng_mesg *nlresp;
	struct namelist *nlist;
	FILE *f = stdout;
	int ch;
	u_int i;

	/* Get options */
	optind = 1;
	while ((ch = FUNC6(ac, av, "")) != -1) {
		switch (ch) {
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
	case 1:
		f = FUNC3(av[0], "w");
		if (f == NULL) {
			FUNC8("Could not open %s for writing", av[0]);
			return (CMDRTN_ERROR);
		}
	case 0:
		break;
	default:
		if (f != stdout)
			(void)FUNC2(f);
		return (CMDRTN_USAGE);
	}

	/* Get list of nodes */
	if (FUNC1(csock, ".", NGM_GENERIC_COOKIE, NGM_LISTNODES, NULL,
	    0) < 0) {
		FUNC8("send listnodes msg");
		goto error;
	}
	if (FUNC0(csock, &nlresp, NULL) < 0) {
		FUNC8("recv listnodes msg");
		goto error;
	}

	nlist = (struct namelist *)nlresp->data;
	FUNC4(f, "graph netgraph {\n");
	/* TODO: implement rank = same or subgraphs at some point */
	FUNC4(f, "\tedge [ weight = 1.0 ];\n");
	FUNC4(f, "\tnode [ shape = record, fontsize = 12 ] {\n");
	for (i = 0; i < nlist->numnames; i++)
		FUNC4(f, "\t\t\"%jx\" [ label = \"{%s:|{%s|[%jx]:}}\" ];\n",
		    (uintmax_t)nlist->nodeinfo[i].id,
		    nlist->nodeinfo[i].name[0] != '\0' ?
		    nlist->nodeinfo[i].name : UNNAMED,
		    nlist->nodeinfo[i].type, (uintmax_t)nlist->nodeinfo[i].id);
	FUNC4(f, "\t};\n");

	FUNC4(f, "\tsubgraph cluster_disconnected {\n");
	FUNC4(f, "\t\tbgcolor = pink;\n");
	for (i = 0; i < nlist->numnames; i++)
		if (nlist->nodeinfo[i].hooks == 0)
			FUNC4(f, "\t\t\"%jx\";\n",
			    (uintmax_t)nlist->nodeinfo[i].id);
	FUNC4(f, "\t};\n");

	for (i = 0; i < nlist->numnames; i++) {
		struct ng_mesg *hlresp;
		struct hooklist *hlist;
		struct nodeinfo *ninfo;
		char path[NG_PATHSIZ];
		u_int j;

		(void)FUNC7(path, sizeof(path), "[%jx]:",
		    (uintmax_t)nlist->nodeinfo[i].id);

		/* Get node info and hook list */
		if (FUNC1(csock, path, NGM_GENERIC_COOKIE, NGM_LISTHOOKS,
		    NULL, 0) < 0) {
			FUNC5(nlresp);
			FUNC8("send listhooks msg");
			goto error;
		}
		if (FUNC0(csock, &hlresp, NULL) < 0) {
			FUNC5(nlresp);
			FUNC8("recv listhooks msg");
			goto error;
		}

		hlist = (struct hooklist *)hlresp->data;
		ninfo = &hlist->nodeinfo;
		if (ninfo->hooks == 0) {
			FUNC5(hlresp);
			continue;
		}

		FUNC4(f, "\tnode [ shape = octagon, fontsize = 10 ] {\n");
		for (j = 0; j < ninfo->hooks; j++)
			FUNC4(f, "\t\t\"%jx.%s\" [ label = \"%s\" ];\n",
			    (uintmax_t)nlist->nodeinfo[i].id,
			    hlist->link[j].ourhook, hlist->link[j].ourhook);
		FUNC4(f, "\t};\n");

		FUNC4(f, "\t{\n\t\tedge [ weight = 2.0, style = bold ];\n");
		for (j = 0; j < ninfo->hooks; j++)
			FUNC4(f, "\t\t\"%jx\" -- \"%jx.%s\";\n",
			    (uintmax_t)nlist->nodeinfo[i].id,
			    (uintmax_t)nlist->nodeinfo[i].id,
			    hlist->link[j].ourhook);
		FUNC4(f, "\t};\n");

		for (j = 0; j < ninfo->hooks; j++) {
			/* Only print the edges going in one direction. */
			if (hlist->link[j].nodeinfo.id > nlist->nodeinfo[i].id)
				continue;
			FUNC4(f, "\t\"%jx.%s\" -- \"%jx.%s\";\n",
			    (uintmax_t)nlist->nodeinfo[i].id,
			    hlist->link[j].ourhook,
			    (uintmax_t)hlist->link[j].nodeinfo.id,
			    hlist->link[j].peerhook);
		}
		FUNC5(hlresp);
	}

	FUNC4(f, "}\n");

	FUNC5(nlresp);
	if (f != stdout)
		(void)FUNC2(f);
	return (CMDRTN_OK);
error:
	if (f != stdout)
		(void)FUNC2(f);
	return (CMDRTN_ERROR);
}