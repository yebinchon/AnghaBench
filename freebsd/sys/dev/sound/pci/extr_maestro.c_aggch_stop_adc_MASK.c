#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct agg_rchinfo {TYPE_1__* parent; } ;
struct TYPE_8__ {int active; int playchns; } ;

/* Variables and functions */
 int /*<<< orphan*/  APUREG_APUTYPE ; 
 int APUTYPE_INACTIVE ; 
 int APU_APUTYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  powerstate_idle ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct agg_rchinfo *ch)
{
	int apuch;

	FUNC0(ch->parent);

	/* to mark that this channel no longer needs further intrs. */
	ch->parent->active &= ~(1 << ch->parent->playchns);

	for (apuch = 0; apuch < 4; apuch++)
		FUNC6(ch->parent, apuch, APUREG_APUTYPE,
		    APUTYPE_INACTIVE << APU_APUTYPE_SHIFT);

	if (ch->parent->active) {
		FUNC3(ch->parent);
		FUNC4(ch->parent);
	} else {
		FUNC5(ch->parent);
		FUNC1(ch->parent, powerstate_idle);
	}
	FUNC2(ch->parent);
}