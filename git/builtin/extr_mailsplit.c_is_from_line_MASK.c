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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(const char *line, int len)
{
	const char *colon;

	if (len < 20 || FUNC1("From ", line, 5))
		return 0;

	colon = line + len - 2;
	line += 5;
	for (;;) {
		if (colon < line)
			return 0;
		if (*--colon == ':')
			break;
	}

	if (!FUNC0(colon[-4]) ||
	    !FUNC0(colon[-2]) ||
	    !FUNC0(colon[-1]) ||
	    !FUNC0(colon[ 1]) ||
	    !FUNC0(colon[ 2]))
		return 0;

	/* year */
	if (FUNC2(colon+3, NULL, 10) <= 90)
		return 0;

	/* Ok, close enough */
	return 1;
}