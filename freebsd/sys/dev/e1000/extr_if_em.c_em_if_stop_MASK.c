#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_1__ mac; } ;
struct adapter {TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_WUFC ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ e1000_82544 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct adapter* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC5(ctx);

	FUNC1("em_if_stop: begin");

	FUNC4(&adapter->hw);
	if (adapter->hw.mac.type >= e1000_82544)
		FUNC0(&adapter->hw, E1000_WUFC, 0);

	FUNC3(&adapter->hw);
	FUNC2(&adapter->hw);
}