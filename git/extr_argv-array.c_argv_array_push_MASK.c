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
struct argv_array {char const** argv; int argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct argv_array*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

const char *FUNC2(struct argv_array *array, const char *value)
{
	FUNC0(array, FUNC1(value));
	return array->argv[array->argc - 1];
}