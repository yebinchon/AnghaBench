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
struct bintime {int dummy; } ;
struct timehands {scalar_t__ th_generation; int th_scale; struct bintime th_bintime; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct bintime*,int) ; 
 int FUNC3 (struct timehands*) ; 
 struct timehands* timehands ; 

void
FUNC4(struct bintime *bt)
{
	struct timehands *th;
	u_int gen;

	do {
		th = timehands;
		gen = FUNC0(&th->th_generation);
		*bt = th->th_bintime;
		FUNC2(bt, th->th_scale * FUNC3(th));
		FUNC1();
	} while (gen == 0 || gen != th->th_generation);
}