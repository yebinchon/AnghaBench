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
typedef  int uint64_t ;
struct tool_ctx {int link_mask; int link_bits; int /*<<< orphan*/  link_event_timer; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*),struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct tool_ctx *tc = (struct tool_ctx *)arg;
	uint64_t val;

	val = FUNC2(tc->dev, NULL, NULL) & tc->link_mask;

	if (val == tc->link_bits) {
		FUNC1(tc->dev, "link_event successful for link val="
		    "0x%jx\n", tc->link_bits);
		tc->link_bits = 0x0;
		tc->link_mask = 0x0;
	} else
		FUNC0(&tc->link_event_timer, 1, tool_link_event_handler, tc);
}