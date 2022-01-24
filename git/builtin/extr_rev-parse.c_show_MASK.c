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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ output_sq ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC3(const char *arg)
{
	if (output_sq) {
		int sq = '\'', ch;

		FUNC1(sq);
		while ((ch = *arg++)) {
			if (ch == sq)
				FUNC0("'\\'", stdout);
			FUNC1(ch);
		}
		FUNC1(sq);
		FUNC1(' ');
	}
	else
		FUNC2(arg);
}