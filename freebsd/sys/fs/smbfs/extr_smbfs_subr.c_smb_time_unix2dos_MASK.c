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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct timespec {int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(struct timespec *tsp, int tzoff, u_int16_t *ddp, 
	u_int16_t *dtp,	u_int8_t *dhp)
{
	struct timespec tt;
	u_long t;

	tt = *tsp;
	FUNC0(tsp, tzoff, &t);
	tt.tv_sec = t;
	FUNC1(&tt, 1, ddp, dtp, dhp);
}