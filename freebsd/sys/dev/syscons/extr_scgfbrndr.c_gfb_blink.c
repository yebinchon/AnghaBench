
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
typedef TYPE_1__ scr_stat ;


 int VR_CURSOR_BLINK ;
 int VR_CURSOR_ON ;
 int gfb_cursor (TYPE_1__*,int,int,int,int) ;
 int pxlblinkrate ;

__attribute__((used)) static void
gfb_blink(scr_stat *scp, int at, int flip)
{
 if (!(scp->status & VR_CURSOR_BLINK))
  return;
 if (!(++pxlblinkrate & 4))
  return;
 pxlblinkrate = 0;
 scp->status ^= VR_CURSOR_ON;
 gfb_cursor(scp, at, scp->status & VR_CURSOR_BLINK,
     scp->status & VR_CURSOR_ON, flip);
}
