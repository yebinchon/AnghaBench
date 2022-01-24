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
typedef  int /*<<< orphan*/  u_int ;
struct timespec {int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct timespec*) ; 

void
FUNC2(u_int dd, u_int dt, u_int dh, int tzoff,
	struct timespec *tsp)
{

	FUNC0(dd, dt, dh, 1, tsp);
	FUNC1(tsp->tv_sec, tzoff, tsp);
}