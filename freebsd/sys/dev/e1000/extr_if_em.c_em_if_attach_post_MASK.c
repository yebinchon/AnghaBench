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
struct TYPE_2__ {int get_link_status; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct adapter {int /*<<< orphan*/  mta; int /*<<< orphan*/  has_amt; scalar_t__ has_manage; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adapter* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC11(ctx);
	struct e1000_hw *hw = &adapter->hw;
	int error = 0;
	
	/* Setup OS specific network interface */
	error = FUNC8(ctx);
	if (error != 0) {
		goto err_late;
	}

	FUNC7(ctx);

	/* Initialize statistics */
	FUNC9(adapter);
	hw->mac.get_link_status = 1;
	FUNC5(ctx);
	FUNC1(adapter);

	/* Non-AMT based hardware can now take control from firmware */
	if (adapter->has_manage && !adapter->has_amt)
		FUNC3(adapter);

	FUNC0("em_if_attach_post: end");

	return (error);

err_late:
	FUNC6(adapter);
	FUNC2(ctx);
	FUNC4(ctx);
	FUNC10(adapter->mta, M_DEVBUF);

	return (error);
}