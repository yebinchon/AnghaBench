#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int accelx; int remainx; int accely; int remainy; } ;

/* Variables and functions */
 int FUNC0 (float) ; 
 TYPE_1__ rodent ; 

__attribute__((used)) static void
FUNC1(int dx, int dy, int *movex, int *movey)
{
    float fdx, fdy;

    if (dx == 0 && dy == 0) {
	*movex = *movey = 0;
	return;
    }
    fdx = dx * rodent.accelx + rodent.remainx;
    fdy = dy * rodent.accely + rodent.remainy;
    *movex = FUNC0(fdx);
    *movey = FUNC0(fdy);
    rodent.remainx = fdx - *movex;
    rodent.remainy = fdy - *movey;
}