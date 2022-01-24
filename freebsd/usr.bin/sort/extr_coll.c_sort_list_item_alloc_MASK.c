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
struct sort_list_item {int dummy; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sort_list_item*,int /*<<< orphan*/ ,size_t) ; 
 struct sort_list_item* FUNC2 (size_t) ; 

struct sort_list_item *
FUNC3(void)
{
	struct sort_list_item *si;
	size_t sz;

	sz = sizeof(struct sort_list_item) + FUNC0();
	si = FUNC2(sz);
	FUNC1(si, 0, sz);

	return (si);
}