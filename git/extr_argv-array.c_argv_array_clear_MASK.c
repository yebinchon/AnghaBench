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
struct argv_array {char* argv; int argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct argv_array*) ; 
 char* empty_argv ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(struct argv_array *array)
{
	if (array->argv != empty_argv) {
		int i;
		for (i = 0; i < array->argc; i++)
			FUNC1((char *)array->argv[i]);
		FUNC1(array->argv);
	}
	FUNC0(array);
}