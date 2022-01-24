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
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 

__attribute__((used)) static inline void
FUNC9(uint32_t n, uint64_t bar, uint32_t sr)
{

	if (FUNC8()) {
		FUNC6(FUNC1(n), bar >> 32);
		FUNC6(FUNC2(n), bar);
		FUNC6(FUNC4(n), sr);
		FUNC5(FUNC4(n));
	} else {
		FUNC6(FUNC0(n), bar >> 12);
		FUNC6(FUNC3(n), sr);
		FUNC5(FUNC3(n));
	}

	/*
	 * The last write to LAWAR should be followed by a read
	 * of LAWAR before any device try to use any of windows.
	 * What more the read of LAWAR should be followed by isync
	 * instruction.
	 */

	FUNC7();
}