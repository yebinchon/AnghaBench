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
struct table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (struct table*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (struct table*) ; 
 int /*<<< orphan*/  FUNC4 (struct table*) ; 

int FUNC5(int argc, char *argv[])
{
	struct table t;

	if (argc != 2) {
		FUNC1(stderr, "Usage: %s <authfile>\n", argv[0]);
		FUNC0(1);
	}
	FUNC3(&t);
	if (FUNC2(&t, argv[1])) {
		FUNC1(stderr, "Failed to parse file %s\n", argv[1]);
		return -1;
	}
	FUNC4(&t);
	return 0;
}