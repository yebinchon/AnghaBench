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
struct getentdb {int /*<<< orphan*/  (* callback ) (int,char**) ;int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int RV_USAGE ; 
 struct getentdb* databases ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char**) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(int argc, char *argv[])
{
	struct getentdb	*curdb;

	FUNC2(argv[0]);

	if (argc < 2)
		FUNC5();
	for (curdb = databases; curdb->name != NULL; curdb++) {
		if (FUNC3(curdb->name, argv[1]) == 0) {
			FUNC0(curdb->callback(argc, argv));
		}
	}
	FUNC1(stderr, "Unknown database: %s\n", argv[1]);
	FUNC5();
	/* NOTREACHED */
	return RV_USAGE;
}