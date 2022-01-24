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
typedef  enum color_push { ____Placeholder_color_push } color_push ;

/* Variables and functions */
 char const** push_colors ; 
 int /*<<< orphan*/  push_use_color ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC1(enum color_push ix)
{
	if (FUNC0(push_use_color))
		return push_colors[ix];
	return "";
}