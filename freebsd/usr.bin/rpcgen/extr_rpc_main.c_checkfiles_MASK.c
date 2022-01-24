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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static void
FUNC4(const char *infile, const char *outfile)
{

	struct stat buf;

	if (infile)		/* infile ! = NULL */
		if (FUNC1(infile, &buf) < 0)
		{
			FUNC2("%s", infile);
			FUNC0();
		}
	if (outfile) {
		if (FUNC1(outfile, &buf) < 0)
			return;	/* file does not exist */
		else {
			FUNC3("file '%s' already exists and may be overwritten", outfile);
			FUNC0();
		}
	}
}