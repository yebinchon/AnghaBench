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
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 

__attribute__((used)) static void
FUNC1(const char *argv[], int argc, int on)
{
	int n;

	if (argc > 2) {
		for (n = 2; n < argc; n++)
			FUNC0(argv[n], on);
	} else
		FUNC0(NULL, on);
}