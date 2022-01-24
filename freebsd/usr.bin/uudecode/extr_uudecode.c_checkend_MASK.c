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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  infile ; 
 int /*<<< orphan*/  outfile ; 
 int /*<<< orphan*/  outfp ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC6(const char *ptr, const char *end, const char *msg)
{
	size_t n;

	n = FUNC1(end);
	if (FUNC2(ptr, end, n) != 0 ||
	    FUNC3(ptr + n, " \t\r\n") != FUNC1(ptr + n)) {
		FUNC5("%s: %s: %s", infile, outfile, msg);
		return (1);
	}
	if (FUNC0(outfp) != 0) {
		FUNC4("%s: %s", infile, outfile);
		return (1);
	}
	return (0);
}