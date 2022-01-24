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
struct params {int buddy_got; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct params*) ; 
 int /*<<< orphan*/  FUNC1 (struct params*) ; 

void FUNC2(struct params *p)
{
	if (p->buddy_got < 4)
		FUNC1(p);
	else
		FUNC0(p);
}