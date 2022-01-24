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

/* Variables and functions */
 struct string_list const* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  the_repository ; 

const struct string_list *FUNC1(const char *key)
{
	return FUNC0(the_repository, key);
}