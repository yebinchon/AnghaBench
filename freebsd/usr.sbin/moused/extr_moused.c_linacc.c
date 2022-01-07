
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int accelx; int remainx; int accely; int remainy; } ;


 int lround (float) ;
 TYPE_1__ rodent ;

__attribute__((used)) static void
linacc(int dx, int dy, int *movex, int *movey)
{
    float fdx, fdy;

    if (dx == 0 && dy == 0) {
 *movex = *movey = 0;
 return;
    }
    fdx = dx * rodent.accelx + rodent.remainx;
    fdy = dy * rodent.accely + rodent.remainy;
    *movex = lround(fdx);
    *movey = lround(fdy);
    rodent.remainx = fdx - *movex;
    rodent.remainy = fdy - *movey;
}
