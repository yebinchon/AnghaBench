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
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static inline void
FUNC7(uint32_t n, uint64_t *bar, uint32_t *sr)
{

	if (FUNC6()) {
		*bar = (uint64_t)FUNC5(FUNC1(n)) << 32 |
		    FUNC5(FUNC2(n));
		*sr = FUNC5(FUNC4(n));
	} else {
		*bar = (uint64_t)FUNC5(FUNC0(n)) << 12;
		*sr = FUNC5(FUNC3(n));
	}
}