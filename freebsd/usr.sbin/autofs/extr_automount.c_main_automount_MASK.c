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
struct node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_MASTER_PATH ; 
 char* FUNC0 (char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct node*) ; 
 int /*<<< orphan*/  FUNC7 (struct node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct node*) ; 
 int /*<<< orphan*/  FUNC9 (struct node*) ; 
 struct node* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct node*,char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC12 (struct node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int
FUNC15(int argc, char **argv)
{
	struct node *root;
	int ch, debug = 0, show_maps = 0;
	char *options = NULL;
	bool do_unmount = false, force_unmount = false, flush = false;

	/*
	 * Note that in automount(8), the only purpose of variable
	 * handling is to aid in debugging maps (automount -L).
	 */
	FUNC1();

	while ((ch = FUNC4(argc, argv, "D:Lfco:uv")) != -1) {
		switch (ch) {
		case 'D':
			FUNC2(optarg);
			break;
		case 'L':
			show_maps++;
			break;
		case 'c':
			flush = true;
			break;
		case 'f':
			force_unmount = true;
			break;
		case 'o':
			options = FUNC0(options, ',', optarg);
			break;
		case 'u':
			do_unmount = true;
			break;
		case 'v':
			debug++;
			break;
		case '?':
		default:
			FUNC14();
		}
	}
	argc -= optind;
	if (argc != 0)
		FUNC14();

	if (force_unmount && !do_unmount)
		FUNC14();

	FUNC5(debug);

	if (flush) {
		FUNC3();
		return (0);
	}

	if (do_unmount) {
		FUNC13(force_unmount);
		return (0);
	}

	root = FUNC10();
	FUNC12(root, AUTO_MASTER_PATH);

	if (show_maps) {
		if (show_maps > 1) {
			FUNC9(root);
			FUNC7(root, NULL);
		}
		FUNC8(root);
		FUNC11(root, options);
		return (0);
	}

	FUNC6(root);

	return (0);
}