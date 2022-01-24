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
 int PS_FST_FFLAG_READ ; 
 int PS_FST_FFLAG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2(int flags)
{
	char rw[3];

	rw[0] = '\0';
	if (flags & PS_FST_FFLAG_READ)
		FUNC1(rw, "r");
	if (flags & PS_FST_FFLAG_WRITE)
		FUNC1(rw, "w");
	FUNC0(" %2s", rw);
}