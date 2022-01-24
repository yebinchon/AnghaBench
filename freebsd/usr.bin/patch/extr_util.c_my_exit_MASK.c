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
 int /*<<< orphan*/  TMPINNAME ; 
 int /*<<< orphan*/  TMPOUTNAME ; 
 int /*<<< orphan*/  TMPPATNAME ; 
 int /*<<< orphan*/  TMPREJNAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  toutkeep ; 
 int /*<<< orphan*/  trejkeep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(int status)
{
	FUNC1(TMPINNAME);
	if (!toutkeep)
		FUNC1(TMPOUTNAME);
	if (!trejkeep)
		FUNC1(TMPREJNAME);
	FUNC1(TMPPATNAME);
	FUNC0(status);
}