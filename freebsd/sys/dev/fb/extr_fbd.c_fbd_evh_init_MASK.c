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

/* Variables and functions */
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  register_fb_wrap ; 
 int /*<<< orphan*/  register_framebuffer ; 
 int /*<<< orphan*/  unregister_fb_wrap ; 
 int /*<<< orphan*/  unregister_framebuffer ; 

__attribute__((used)) static void
FUNC1(void *ctx)
{

	FUNC0(register_framebuffer, register_fb_wrap, NULL,
	    EVENTHANDLER_PRI_ANY);
	FUNC0(unregister_framebuffer, unregister_fb_wrap, NULL,
	    EVENTHANDLER_PRI_ANY);
}