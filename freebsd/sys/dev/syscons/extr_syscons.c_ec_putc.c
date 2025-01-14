
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int ;
struct TYPE_7__ {int xsize; int ysize; TYPE_2__* sc; } ;
struct TYPE_6__ {TYPE_1__* adp; } ;
struct TYPE_5__ {uintptr_t va_window; } ;


 int ISTEXTSC (TYPE_3__*) ;
 int KERNBASE ;
 scalar_t__ atomic_cmpset_rel_int (int*,int,int) ;
 int ec_scroffset ;
 TYPE_3__ main_console ;
 int pmap_get_map_low () ;
 int * sc_console ;
 int sc_kattr () ;

__attribute__((used)) static void
ec_putc(int c)
{
 uintptr_t fb;
 u_short *scrptr;
 u_int ind;
 int attr, column, mysize, width, xsize, yborder, ysize;

 if (c < 0 || c > 0xff || c == '\a')
  return;
 if (sc_console == ((void*)0)) {
  fb = KERNBASE + 0xb8000;



  xsize = 80;
  ysize = 25;

 } else {
  if (!ISTEXTSC(&main_console))
   return;
  fb = main_console.sc->adp->va_window;
  xsize = main_console.xsize;
  ysize = main_console.ysize;
 }
 yborder = ysize / 5;
 scrptr = (u_short *)(void *)fb + xsize * yborder;
 mysize = xsize * (ysize - 2 * yborder);
 do {
  ind = ec_scroffset;
  column = ind % xsize;
  width = (c == '\b' ? -1 : c == '\t' ? (column + 8) & ~7 :
      c == '\r' ? -column : c == '\n' ? xsize - column : 1);
  if (width == 0 || (width < 0 && ind < -width))
   return;
 } while (atomic_cmpset_rel_int(&ec_scroffset, ind, ind + width) == 0);
 if (c == '\b' || c == '\r')
  return;
 if (c == '\n')
  ind += xsize;

 attr = sc_kattr();
 if (c == '\t' || c == '\n')
  c = ' ';
 do
  scrptr[ind++ % mysize] = (attr << 8) | c;
 while (--width != 0);
}
