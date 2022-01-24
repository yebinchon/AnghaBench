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
struct man_viewer_info_list {struct man_viewer_info_list* next; int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct man_viewer_info_list*,char const*,char const*,size_t) ; 
 struct man_viewer_info_list* man_viewer_info_list ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(const char *name,
				   size_t len,
				   const char *value)
{
	struct man_viewer_info_list *new_man_viewer;
	FUNC0(new_man_viewer, name, name, len);
	new_man_viewer->info = FUNC1(value);
	new_man_viewer->next = man_viewer_info_list;
	man_viewer_info_list = new_man_viewer;
}