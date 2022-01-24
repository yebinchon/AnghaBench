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
typedef  scalar_t__ u_int ;
struct timeval {int dummy; } ;
struct timehands {scalar_t__ th_generation; struct timeval th_microtime; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct timehands* timehands ; 

void
FUNC2(struct timeval *tvp)
{
	struct timehands *th;
	u_int gen;

	do {
		th = timehands;
		gen = FUNC0(&th->th_generation);
		*tvp = th->th_microtime;
		FUNC1();
	} while (gen == 0 || gen != th->th_generation);
}