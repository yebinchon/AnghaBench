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
struct string_list_item {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct string_list_item const*) ; 

__attribute__((used)) static int FUNC1(const void *a1, const void *a2)
{
	const struct string_list_item *i1 = a1, *i2 = a2;
	return FUNC0(i2) - FUNC0(i1);
}