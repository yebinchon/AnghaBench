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
typedef  scalar_t__ useconds_t ;

/* Variables and functions */
 scalar_t__ RANDOM_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

int FUNC7(int argc, char** argv){
	useconds_t max_usecs, usecs;
	double frac;

	if (argc != 2) {
		FUNC2("Usage: randsleep <max_microseconds>\n");
		FUNC0(2);
	}

	errno = 0;
	max_usecs = (useconds_t)FUNC5(argv[1], NULL, 0);
	if (errno != 0) {
		FUNC1("strtol");
		FUNC0(1);
	}
	FUNC4();
	frac = (double)FUNC3() / (double)RANDOM_MAX;
	usecs = (useconds_t)((double)max_usecs * frac);
	FUNC6(usecs);

	return (0);
}