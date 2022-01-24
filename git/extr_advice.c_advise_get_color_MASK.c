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
typedef  enum color_advice { ____Placeholder_color_advice } color_advice ;

/* Variables and functions */
 char const** advice_colors ; 
 int /*<<< orphan*/  advice_use_color ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC1(enum color_advice ix)
{
	if (FUNC0(advice_use_color))
		return advice_colors[ix];
	return "";
}