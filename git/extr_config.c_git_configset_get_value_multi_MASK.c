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
struct string_list {int dummy; } ;
struct config_set_element {struct string_list const value_list; } ;
struct config_set {int dummy; } ;

/* Variables and functions */
 struct config_set_element* FUNC0 (struct config_set*,char const*) ; 

const struct string_list *FUNC1(struct config_set *cs, const char *key)
{
	struct config_set_element *e = FUNC0(cs, key);
	return e ? &e->value_list : NULL;
}