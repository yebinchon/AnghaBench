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
typedef  int phandle_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,char*,size_t) ; 

int
FUNC2(char *bootargs, size_t max_size)
{
	phandle_t chosen;

	chosen = FUNC0("/chosen");
	if (chosen == -1)
		return (ENXIO);
	if (FUNC1(chosen, "bootargs", bootargs, max_size) == -1)
		return (ENXIO);
	return (0);
}