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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ time_t ;

/* Variables and functions */
 char* FUNC0 (scalar_t__*) ; 

__attribute__((used)) static char *
FUNC1(time_t now, uint32_t at_now, uint32_t at)
{
	time_t t;

	t = (now - at_now) + at;
	return (FUNC0(&t));
}