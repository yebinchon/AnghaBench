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
 int EOF ; 
 scalar_t__ base64 ; 
 int FUNC0 () ; 
 scalar_t__ cflag ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  infile ; 
 char* outfile ; 
 int /*<<< orphan*/  outfp ; 
 scalar_t__ rflag ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void)
{
	int r, v;

	if (rflag) {
		/* relaxed alternative to decode2() */
		outfile = "/dev/stdout";
		outfp = stdout;
		if (base64)
			return (FUNC0());
		else
			return (FUNC2());
	}
	v = FUNC1();
	if (v == EOF) {
		FUNC3("%s: missing or bad \"begin\" line", infile);
		return (1);
	}
	for (r = v; cflag; r |= v) {
		v = FUNC1();
		if (v == EOF)
			break;
	}
	return (r);
}