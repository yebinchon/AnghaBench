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
struct date {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct date*) ; 
 int FUNC1 (struct date*) ; 
 scalar_t__ nswitch ; 

__attribute__((used)) static int
FUNC2(struct date *d)
{

	if (nswitch != 0)
		if (nswitch < FUNC1(d))
			return (FUNC0(d));
		else
			return (FUNC1(d));
	else
		return FUNC0(d);
}