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
struct libalias {int deleteAllLinks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC2 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC3 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC4 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC5 (struct libalias*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC7 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC8 (struct libalias*) ; 
 int /*<<< orphan*/  instancelist ; 

void
FUNC9(struct libalias *la)
{

	FUNC2(la);
#ifdef _KERNEL
	AliasSctpTerm(la);
#endif
	la->deleteAllLinks = 1;
	FUNC1(la);
	la->deleteAllLinks = 0;
	FUNC6(la);
#ifndef NO_FW_PUNCH
	FUNC7(la);
#endif
	FUNC5(la, instancelist);
	FUNC4(la);
	FUNC3(la);
	FUNC8(la);
}