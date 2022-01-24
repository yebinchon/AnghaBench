#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ifvlantrunk {TYPE_1__* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/ * if_vlantrunk; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_VLAN ; 
 int /*<<< orphan*/  FUNC0 (struct ifvlantrunk*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ifvlantrunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifvlantrunk*) ; 

__attribute__((used)) static void
FUNC5(struct ifvlantrunk *trunk)
{
	FUNC1();

	FUNC4(trunk);
	trunk->parent->if_vlantrunk = NULL;
	FUNC0(trunk);
	FUNC3(trunk->parent);
	FUNC2(trunk, M_VLAN);
}