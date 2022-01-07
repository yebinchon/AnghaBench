
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
typedef int fp16_t ;
struct TYPE_2__ {unsigned int x; unsigned int y; unsigned int vx; unsigned int vy; } ;


 unsigned int FOCI ;
 int FP16toI (int) ;
 int ItoFP16 (int) ;
 unsigned int banksize ;
 int fp16_add (int,int) ;
 int fp16_cos (int) ;
 int fp16_div (int,int) ;
 int fp16_mul (int,int) ;
 int fp16_sqrt (int) ;
 int fp16_sub (int,int ) ;
 TYPE_1__* plasma_foci ;
 unsigned int scrh ;
 unsigned int scrw ;
 int * vid ;
 int vidd_set_win_org (int *,unsigned int) ;

__attribute__((used)) static void
plasma_update(video_adapter_t *adp)
{
 unsigned int x, y;
 signed int dx, dy;
 fp16_t sqd, d;
 fp16_t m;
 unsigned int org, off;
 unsigned int i;


 vidd_set_win_org(adp, 0);

 for (y = org = off = 0; y < scrh; ++y) {

  for (x = 0; x < scrw; ++x, ++off) {

   for (i = m = 0; i < FOCI; ++i) {
    dx = x - plasma_foci[i].x;
    dy = y - plasma_foci[i].y;
    sqd = ItoFP16(dx * dx + dy * dy);
    d = fp16_sqrt(sqd);

    m = fp16_sub(m, fp16_cos(d / 4));
   }






   m = fp16_mul(m, ItoFP16(127));
   m = fp16_div(m, ItoFP16(FOCI));
   m = fp16_add(m, ItoFP16(127));

   if (off > banksize) {
    off -= banksize;
    org += banksize;
    vidd_set_win_org(adp, org);
   }

   vid[off] = FP16toI(m);
  }
 }

 for (i = 0; i < FOCI; ++i) {
  plasma_foci[i].x += plasma_foci[i].vx;
  if (plasma_foci[i].x < 0) {

   plasma_foci[i].vx = -plasma_foci[i].vx;
   plasma_foci[i].x = -plasma_foci[i].x;
  } else if (plasma_foci[i].x >= scrw) {

   plasma_foci[i].vx = -plasma_foci[i].vx;
   plasma_foci[i].x = scrw - (plasma_foci[i].x - scrw);
  }
  plasma_foci[i].y += plasma_foci[i].vy;
  if (plasma_foci[i].y < 0) {

   plasma_foci[i].vy = -plasma_foci[i].vy;
   plasma_foci[i].y = -plasma_foci[i].y;
  } else if (plasma_foci[i].y >= scrh) {

   plasma_foci[i].vy = -plasma_foci[i].vy;
   plasma_foci[i].y = scrh - (plasma_foci[i].y - scrh);
  }
 }
}
