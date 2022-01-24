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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ah ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int,int,int,int,int) ; 

__attribute__((used)) static void
FUNC7(FILE *fd, int what)
{
	int i;

	/* DCU registers */
	for (i = 0; i < 10; i++)
		FUNC6(fd, "D[%u] MASK %08x IFS %08x RTRY %08x CHNT %08x MISC %06x\n"
			, i
			, FUNC5(ah, FUNC3(i))
			, FUNC5(ah, FUNC1(i))
			, FUNC5(ah, FUNC4(i))
			, FUNC5(ah, FUNC0(i))
			, FUNC5(ah, FUNC2(i))
		);
}