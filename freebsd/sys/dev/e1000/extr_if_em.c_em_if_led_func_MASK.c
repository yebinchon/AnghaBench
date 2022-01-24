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
struct adapter {int /*<<< orphan*/  hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct adapter* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(if_ctx_t ctx, int onoff)
{
	struct adapter *adapter = FUNC4(ctx);

	if (onoff) {
		FUNC3(&adapter->hw);
		FUNC2(&adapter->hw);
	} else {
		FUNC1(&adapter->hw);
		FUNC0(&adapter->hw);
	}
}