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
struct all_attrs_item {scalar_t__ value; scalar_t__ macro; } ;

/* Variables and functions */
 scalar_t__ ATTR__TRUE ; 
 int FUNC0 (char*,struct all_attrs_item*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC1(struct all_attrs_item *all_attrs, int nr, int rem)
{
	const struct all_attrs_item *item = &all_attrs[nr];

	if (item->macro && item->value == ATTR__TRUE)
		return FUNC0("expand", all_attrs, item->macro, rem);
	else
		return rem;
}