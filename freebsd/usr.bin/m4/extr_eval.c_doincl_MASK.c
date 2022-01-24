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
 int MAXINP ; 
 int /*<<< orphan*/ * bbase ; 
 int /*<<< orphan*/  bp ; 
 int /*<<< orphan*/  bufbase ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__,char const*) ; 
 int ilevel ; 
 scalar_t__ infile ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static int
FUNC2(const char *ifile)
{
	if (ilevel + 1 == MAXINP)
		FUNC1(1, "too many include files.");
	if (FUNC0(infile+ilevel+1, ifile) != NULL) {
		ilevel++;
		bbase[ilevel] = bufbase = bp;
		return (1);
	} else
		return (0);
}