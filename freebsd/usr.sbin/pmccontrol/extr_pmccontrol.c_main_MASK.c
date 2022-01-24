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
struct pmcc_op {int op_cpu; int op_pmc; int /*<<< orphan*/  op_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int PMCC_CPU_ALL ; 
 int /*<<< orphan*/  PMCC_CPU_WILDCARD ; 
#define  PMCC_ENABLE_DISABLE 131 
#define  PMCC_LIST_STATE 130 
 int /*<<< orphan*/  PMCC_OP_DISABLE ; 
 int /*<<< orphan*/  PMCC_OP_ENABLE ; 
 int PMCC_PMC_ALL ; 
 int /*<<< orphan*/  PMCC_PMC_WILDCARD ; 
#define  PMCC_PRINT_EVENTS 129 
 int PMCC_PRINT_USAGE ; 
#define  PMCC_SHOW_STATISTICS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pmcc_op*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  head ; 
 struct pmcc_op* FUNC8 (int) ; 
 int /*<<< orphan*/  op_next ; 
 int /*<<< orphan*/ * optarg ; 
 int /*<<< orphan*/  optopt ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 () ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 () ; 
 int FUNC15 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usage_message ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 

int
FUNC17(int argc, char **argv)
{
	int error, command, currentcpu, option, pmc;
	char *dummy;
	struct pmcc_op *p;

#if DEBUG
	pmcc_init_debug();
#endif

	/* parse args */

	currentcpu = PMCC_CPU_ALL;
	command    = PMCC_PRINT_USAGE;
	error      = 0;

	FUNC1(&head);

	while ((option = FUNC7(argc, argv, ":c:d:e:lLs")) != -1)
		switch (option) {
		case 'L':
			if (command != PMCC_PRINT_USAGE) {
				error = 1;
				break;
			}
			command = PMCC_PRINT_EVENTS;
			break;

		case 'c':
			if (command != PMCC_PRINT_USAGE &&
			    command != PMCC_ENABLE_DISABLE) {
				error = 1;
				break;
			}
			command = PMCC_ENABLE_DISABLE;

			if (*optarg == PMCC_CPU_WILDCARD)
				currentcpu = PMCC_CPU_ALL;
			else {
				currentcpu = FUNC15(optarg, &dummy, 0);
				if (*dummy != '\0' || currentcpu < 0)
					FUNC5(EX_DATAERR,
					    "\"%s\" is not a valid CPU id",
					    optarg);
			}
			break;

		case 'd':
		case 'e':
			if (command != PMCC_PRINT_USAGE &&
			    command != PMCC_ENABLE_DISABLE) {
				error = 1;
				break;
			}
			command = PMCC_ENABLE_DISABLE;

			if (*optarg == PMCC_PMC_WILDCARD)
				pmc = PMCC_PMC_ALL;
			else {
				pmc = FUNC15(optarg, &dummy, 0);
				if (*dummy != '\0' || pmc < 0)
					FUNC5(EX_DATAERR,
					    "\"%s\" is not a valid PMC id",
					    optarg);
			}

			if ((p = FUNC8(sizeof(*p))) == NULL)
				FUNC4(EX_SOFTWARE, "Out of memory");

			p->op_cpu = currentcpu;
			p->op_pmc = pmc;
			p->op_op  = option == 'd' ? PMCC_OP_DISABLE :
			    PMCC_OP_ENABLE;

			FUNC2(&head, p, op_next);
			break;

		case 'l':
			if (command != PMCC_PRINT_USAGE) {
				error = 1;
				break;
			}
			command = PMCC_LIST_STATE;
			break;

		case 's':
			if (command != PMCC_PRINT_USAGE) {
				error = 1;
				break;
			}
			command = PMCC_SHOW_STATISTICS;
			break;

		case ':':
			FUNC5(EX_USAGE,
			    "Missing argument to option '-%c'", optopt);
			break;

		case '?':
			FUNC16("Unrecognized option \"-%c\"", optopt);
			FUNC5(EX_USAGE, "%s", usage_message);
			break;

		default:
			error = 1;
			break;

		}

	if (command == PMCC_PRINT_USAGE)
		(void) FUNC5(EX_USAGE, "%s", usage_message);

	if (error)
		FUNC6(EX_USAGE);

	if (FUNC9() < 0)
		FUNC4(EX_UNAVAILABLE,
		    "Initialization of the pmc(3) library failed");

	switch (command) {
	case PMCC_LIST_STATE:
		error = FUNC12();
		break;
	case PMCC_PRINT_EVENTS:
		error = FUNC11();
		break;
	case PMCC_SHOW_STATISTICS:
		error = FUNC14();
		break;
	case PMCC_ENABLE_DISABLE:
		if (FUNC0(&head))
			FUNC5(EX_USAGE,
			    "No PMCs specified to enable or disable");
		error = FUNC10(&head);
		break;
	default:
		FUNC3(0);

	}

	if (error != 0)
		FUNC4(EX_OSERR, "Command failed");
	FUNC6(0);
}