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

/* Variables and functions */
 char** kept ; 
 int kept_capacity ; 
 int kept_size ; 
 char** FUNC0 (char**,int,int,char*,int) ; 

__attribute__((used)) static void
FUNC1(char *ptr)
{
	if (kept_capacity <= kept_size) {
		if (kept_capacity)
			kept_capacity *= 2;
		else
			kept_capacity = 50;
		kept = FUNC0(kept, kept_capacity, 
		    sizeof(char *), "Out of memory while saving %d strings\n", 
		    kept_capacity);
	}
	kept[kept_size++] = ptr;
}