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
 int MACRTYPE ; 
 int RECDEF ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const**,int) ; 
 int /*<<< orphan*/  expansion_id ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 scalar_t__ ilevel ; 
 scalar_t__ infile ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 size_t FUNC4 (char const**,int,scalar_t__) ; 

void
FUNC5(const char *argv[], int argc, int td, int is_traced)
{
	size_t mark = SIZE_MAX;

	expansion_id++;
	if (td & RECDEF)
		FUNC3(1, "expanding recursive definition for %s.", argv[1]);
	if (is_traced)
		mark = FUNC4(argv, argc, infile+ilevel);
	if (td == MACRTYPE)
		FUNC1(argv, argc);
	else
		FUNC0(argv, argc, td);
	if (mark != SIZE_MAX)
		FUNC2(mark);
}