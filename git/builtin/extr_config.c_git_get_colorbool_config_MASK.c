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
 void* get_color_ui_found ; 
 void* get_colorbool_found ; 
 char* get_colorbool_slot ; 
 void* get_diff_color_found ; 
 void* FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(const char *var, const char *value,
		void *cb)
{
	if (!FUNC1(var, get_colorbool_slot))
		get_colorbool_found = FUNC0(var, value);
	else if (!FUNC1(var, "diff.color"))
		get_diff_color_found = FUNC0(var, value);
	else if (!FUNC1(var, "color.ui"))
		get_color_ui_found = FUNC0(var, value);
	return 0;
}