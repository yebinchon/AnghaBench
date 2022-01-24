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
struct libalias {int fireWallFD; int /*<<< orphan*/  packetAliasMode; int /*<<< orphan*/ * fireWallField; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 int /*<<< orphan*/  PKT_ALIAS_PUNCH_FW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct libalias *la)
{

	FUNC0(la);
	if (la->fireWallFD >= 0)
		FUNC1(la->fireWallFD);
	la->fireWallFD = -1;
	if (la->fireWallField)
		FUNC2(la->fireWallField);
	la->fireWallField = NULL;
	la->packetAliasMode &= ~PKT_ALIAS_PUNCH_FW;
}