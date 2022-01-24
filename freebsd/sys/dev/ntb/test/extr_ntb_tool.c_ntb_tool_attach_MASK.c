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
struct tool_ctx {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct tool_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct tool_ctx*) ; 
 int FUNC7 (struct tool_ctx*) ; 
 int FUNC8 (struct tool_ctx*) ; 
 int FUNC9 (struct tool_ctx*) ; 
 int FUNC10 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct tool_ctx*) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct tool_ctx *tc = FUNC0(dev);
	int rc = 0;

	tc->dev = dev;
	rc = FUNC2(tc);
	if (rc)
		goto out;

	rc = FUNC9(tc);
	if (rc)
		goto err_clear_data;

	rc = FUNC7(tc);
	if (rc)
		goto err_clear_data;

	rc = FUNC10(tc);
	if (rc)
		goto err_clear_mws;

	rc = FUNC8(tc);
	if (rc)
		goto err_clear_spads;

	FUNC11(tc);

	return (0);

err_clear_spads:
	FUNC6(tc);
err_clear_mws:
	FUNC4(tc);
	FUNC5(tc);
err_clear_data:
	FUNC3(tc);
out:
	FUNC1(dev, "ntb_tool attached failed with err=(%d).\n", rc);
	return (rc);
}