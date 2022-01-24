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
struct tool_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct tool_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct tool_ctx*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct tool_ctx *tc = FUNC0(dev);

	FUNC3(tc);

	FUNC5(tc);

	FUNC2(tc);

	FUNC4(tc);

	FUNC1(tc);

	return (0);
}