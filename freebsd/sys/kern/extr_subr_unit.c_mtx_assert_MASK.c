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
struct mtx {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MA_OWNED ; 

__attribute__((used)) static void
FUNC1(struct mtx *mp, int flag)
{
	if (flag == MA_OWNED) {
		FUNC0(mp->state == 1, ("mtx_assert(MA_OWNED) not true"));
	}
}