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
struct attr_check_item {char* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 

__attribute__((used)) static int FUNC1(struct attr_check_item *check)
{
	const char *value = check->value;

	return !!FUNC0(value);
}