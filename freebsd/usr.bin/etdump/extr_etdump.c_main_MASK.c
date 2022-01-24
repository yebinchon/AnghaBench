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
struct outputter {int dummy; } ;
struct option {char* member_0; float member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct outputter*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (int,char**,char*,struct option*,int /*<<< orphan*/ *) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 struct outputter* output_shell ; 
 struct outputter* output_text ; 
#define  required_argument 128 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6(int argc, char **argv)
{
	int ch, i;
	FILE *outfile, *iso;
	struct outputter *outputter;

	outfile = stdout;
	outputter = output_text;

	static struct option longopts[] = {
		{ "format",	required_argument,	NULL,	'f' },
		{ "output",	required_argument,	NULL,	'o' },
		{ NULL,		0,			NULL,	0 },
	};

	while ((ch = FUNC3(argc, argv, "f:o:", longopts, NULL)) != -1) {
		switch (ch) {
		case 'f':
			if (FUNC4(optarg, "shell") == 0)
				outputter = output_shell;
			else if (FUNC4(optarg, "text") == 0)
				outputter = output_text;
			else
				FUNC5(argv[0]);
			break;
		case 'o':
			if (FUNC4(optarg, "-") == 0) {
				outfile = stdout;
			} else if ((outfile = FUNC2(optarg, "w")) == NULL) {
				FUNC1(1, "unable to open %s for output", optarg);
			}
			break;
		default:
			FUNC5(argv[0]);
		}
	}

	argc -= optind;
	argv += optind;

	for (i = 0; i < argc; i++) {
		if (FUNC4(argv[i], "-") == 0) {
			iso = stdin;
		} else {
			iso = FUNC2(argv[i], "r");
			if (iso == NULL)
				FUNC1(1, "could not open %s", argv[1]);
		}
		FUNC0(iso, argv[i], outfile, outputter);
	}
}