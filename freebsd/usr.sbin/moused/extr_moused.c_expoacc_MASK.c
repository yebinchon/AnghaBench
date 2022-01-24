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
struct TYPE_2__ {int accelx; int accely; float expoffset; float remainx; float remainy; int /*<<< orphan*/  expoaccel; } ;

/* Variables and functions */
 int FUNC0 (float) ; 
 float FUNC1 (float,int /*<<< orphan*/ ) ; 
 TYPE_1__ rodent ; 
 float FUNC2 (float) ; 

__attribute__((used)) static void
FUNC3(int dx, int dy, int *movex, int *movey)
{
    static float lastlength[3] = {0.0, 0.0, 0.0};
    float fdx, fdy, length, lbase, accel;

    if (dx == 0 && dy == 0) {
	*movex = *movey = 0;
	return;
    }
    fdx = dx * rodent.accelx;
    fdy = dy * rodent.accely;
    length = FUNC2((fdx * fdx) + (fdy * fdy));		/* Pythagoras */
    length = (length + lastlength[0] + lastlength[1] + lastlength[2]) / 4;
    lbase = length / rodent.expoffset;
    accel = FUNC1(lbase, rodent.expoaccel) / lbase;
    fdx = fdx * accel + rodent.remainx;
    fdy = fdy * accel + rodent.remainy;
    *movex = FUNC0(fdx);
    *movey = FUNC0(fdy);
    rodent.remainx = fdx - *movex;
    rodent.remainy = fdy - *movey;
    lastlength[2] = lastlength[1];
    lastlength[1] = lastlength[0];
    lastlength[0] = length;	/* Insert new average, not original length! */
}