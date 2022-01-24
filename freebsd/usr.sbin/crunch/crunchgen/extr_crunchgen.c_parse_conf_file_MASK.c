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
 int /*<<< orphan*/  cachename ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  infilename ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ readcache ; 
 int reading_cache ; 

void
FUNC3(void)
{
	if (!FUNC1(infilename))
		FUNC0(1, "fatal: input file \"%s\" not found", infilename);

	FUNC2(infilename);
	if (readcache && FUNC1(cachename)) {
		reading_cache = 1;
		FUNC2(cachename);
	}
}