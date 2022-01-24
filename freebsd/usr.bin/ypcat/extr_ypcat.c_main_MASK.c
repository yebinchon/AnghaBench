#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct ypall_callback {int /*<<< orphan*/ * data; int /*<<< orphan*/  foreach; } ;
struct TYPE_3__ {char* alias; char* name; } ;

/* Variables and functions */
#define  YPERR_YPBIND 128 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char**,char*) ; 
 int key ; 
 size_t FUNC3 (TYPE_1__*) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  printit ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char*,char*,struct ypall_callback*) ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 
 TYPE_1__* ypaliases ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int
FUNC10(int argc, char *argv[])
{
	char *domain = NULL, *inmap;
	struct ypall_callback ypcb;
	int c, notrans, r;
	u_int i;

	notrans = key = 0;
	while ((c = FUNC2(argc, argv, "xd:kt")) != -1)
		switch (c) {
		case 'x':
			for (i = 0; i < FUNC3(ypaliases); i++)
				FUNC4("Use \"%s\" for \"%s\"\n",
				    ypaliases[i].alias, ypaliases[i].name);
			FUNC1(0);
		case 'd':
			domain = optarg;
			break;
		case 't':
			notrans = 1;
			break;
		case 'k':
			key = 1;
			break;
		default:
			FUNC6();
		}

	if (optind + 1 != argc)
		FUNC6();

	if (domain == NULL)
		FUNC8(&domain);

	inmap = argv[optind];
	if (notrans == 0) {
		for (i = 0; i < FUNC3(ypaliases); i++)
			if (FUNC5(inmap, ypaliases[i].alias) == 0)
				inmap = ypaliases[i].name;
	}
	ypcb.foreach = printit;
	ypcb.data = NULL;

	r = FUNC7(domain, inmap, &ypcb);
	switch (r) {
	case 0:
		break;
	case YPERR_YPBIND:
		FUNC0(1, "not running ypbind");
	default:
		FUNC0(1, "no such map %s. Reason: %s",
		    inmap, FUNC9(r));
	}
	FUNC1(0);
}