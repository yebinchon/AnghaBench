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
struct stat {scalar_t__ st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct stat*) ; 

void
FUNC3(const char *nfile, const char *datafile, int copies)
{
	struct stat lbuf;

	FUNC1('\t');
	if (copies > 1)
		FUNC0("%-2d copies of %-19s", copies, nfile);
	else
		FUNC0("%-32s", nfile);
	if (*datafile && !FUNC2(datafile, &lbuf))
		FUNC0(" %qd bytes", (long long) lbuf.st_size);
	else
		FUNC0(" ??? bytes");
	FUNC1('\n');
}