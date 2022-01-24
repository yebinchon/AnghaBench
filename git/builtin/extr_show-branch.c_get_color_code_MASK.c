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
 char const** column_colors_ansi ; 
 int column_colors_ansi_max ; 
 int /*<<< orphan*/  showbranch_use_color ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC1(int idx)
{
	if (FUNC0(showbranch_use_color))
		return column_colors_ansi[idx % column_colors_ansi_max];
	return "";
}