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
struct videomode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct videomode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct videomode*) ; 

int
FUNC5 (int argc, char *argv[])
{
	struct videomode m;

	if (argc != 4) {
		FUNC3("usage: %s x y refresh\n", argv[0]);
		FUNC1(1);
	}
    
	FUNC4(FUNC0(argv[1]), FUNC0(argv[2]), FUNC0(argv[3]), &m);

        FUNC2(&m);
    
	return 0;
    
}