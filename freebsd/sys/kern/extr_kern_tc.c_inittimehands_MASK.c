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
struct timehands {struct timehands* th_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int FUNC1 (struct timehands*) ; 
 struct timehands* ths ; 
 int timehands_count ; 

__attribute__((used)) static void
FUNC2(void *dummy)
{
	struct timehands *thp;
	int i;

	FUNC0("kern.timecounter.timehands_count",
	    &timehands_count);
	if (timehands_count < 1)
		timehands_count = 1;
	if (timehands_count > FUNC1(ths))
		timehands_count = FUNC1(ths);
	for (i = 1, thp = &ths[0]; i < timehands_count;  thp = &ths[i++])
		thp->th_next = &ths[i];
	thp->th_next = &ths[0];
}