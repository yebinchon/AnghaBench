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
struct string_list_item {struct push_info* util; int /*<<< orphan*/  string; } ;
struct show_info {int width; int width2; int /*<<< orphan*/  list; } ;
struct push_info {int /*<<< orphan*/  dest; } ;

/* Variables and functions */
 struct string_list_item* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct string_list_item *push_item, void *cb_data)
{
	struct show_info *show_info = cb_data;
	struct push_info *push_info = push_item->util;
	struct string_list_item *item;
	int n;
	if ((n = FUNC1(push_item->string)) > show_info->width)
		show_info->width = n;
	if ((n = FUNC1(push_info->dest)) > show_info->width2)
		show_info->width2 = n;
	item = FUNC0(show_info->list, push_item->string);
	item->util = push_item->util;
	return 0;
}