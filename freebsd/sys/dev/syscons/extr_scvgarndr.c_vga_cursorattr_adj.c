
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_4__ {int* bg; } ;
struct TYPE_5__ {TYPE_1__ curs_attr; } ;
typedef TYPE_2__ scr_stat ;


 int nitems (int*) ;
 int vga_flipattr (int,int) ;

__attribute__((used)) static u_short
vga_cursorattr_adj(scr_stat *scp, u_short a, int blink)
{
 int i;
 u_short bg, bgmask, fg, newbg;







 bgmask = blink ? 0x7000 : 0xf000;
 bg = a & bgmask;
 fg = a & 0x0f00;
 for (i = 0; i < nitems(scp->curs_attr.bg); i++) {
  newbg = (scp->curs_attr.bg[i] << 12) & bgmask;
  if (newbg != bg && newbg != (fg << 4))
   break;
 }
 if (i == nitems(scp->curs_attr.bg))
  return (vga_flipattr(a, blink));
 return (fg | newbg | (blink ? a & 0x8000 : 0));
}
