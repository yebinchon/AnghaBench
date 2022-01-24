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
struct man_viewer_list {struct man_viewer_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct man_viewer_list*,char const*,char const*) ; 
 struct man_viewer_list* man_viewer_list ; 

__attribute__((used)) static void FUNC1(const char *name)
{
	struct man_viewer_list **p = &man_viewer_list;

	while (*p)
		p = &((*p)->next);
	FUNC0(*p, name, name);
}