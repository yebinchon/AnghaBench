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
 unsigned int PRIVATE ; 
 unsigned int PUBLIC ; 
 unsigned int ROOT ; 
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static int
FUNC1(unsigned int mode, unsigned int rw)
{
	if (mode & (rw<<PUBLIC))
		return (1);
	if (mode & (rw<<PRIVATE))
		return (1);
	return ((mode & (rw<<ROOT)) && FUNC0() == 0);
}