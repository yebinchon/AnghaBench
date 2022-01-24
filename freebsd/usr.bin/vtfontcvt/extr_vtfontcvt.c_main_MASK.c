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
struct file_mapping {int dummy; } ;
struct file_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFNT_MAP_BOLD ; 
 int /*<<< orphan*/  VFNT_MAP_BOLD_RH ; 
 int /*<<< orphan*/  VFNT_MAP_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char**,char*) ; 
 void* height ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 void* width ; 
 scalar_t__ FUNC11 (char*) ; 

int
FUNC12(int argc, char *argv[])
{
	int ch, verbose = 0;

	FUNC0(sizeof(struct file_header) == 32);
	FUNC0(sizeof(struct file_mapping) == 8);

	while ((ch = FUNC4(argc, argv, "h:vw:")) != -1) {
		switch (ch) {
		case 'h':
			height = FUNC1(optarg);
			break;
		case 'v':
			verbose = 1;
			break;
		case 'w':
			width = FUNC1(optarg);
			break;
		case '?':
		default:
			FUNC10();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc < 2 || argc > 3)
		FUNC10();

	FUNC9(width);
	FUNC8(height);

	if (FUNC6(argv[0], VFNT_MAP_NORMAL) != 0)
		return (1);
	argc--;
	argv++;
	if (argc == 2) {
		if (FUNC6(argv[0], VFNT_MAP_BOLD) != 0)
			return (1);
		argc--;
		argv++;
	}
	FUNC5();
	FUNC2(VFNT_MAP_BOLD);
	FUNC2(VFNT_MAP_BOLD_RH);
	FUNC3(0);
	FUNC3(1);
	FUNC3(2);
	FUNC3(3);
	if (FUNC11(argv[0]) != 0)
		return (1);

	if (verbose)
		FUNC7();

	return (0);
}