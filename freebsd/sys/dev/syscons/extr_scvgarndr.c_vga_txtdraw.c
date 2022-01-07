
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_3__ {int xsize; int ysize; int scr; int vtb; } ;
typedef TYPE_1__ scr_stat ;


 int TRUE ;
 int sc_vtb_copy (int *,int,int *,int,int) ;
 int sc_vtb_geta (int *,int) ;
 int sc_vtb_getc (int *,int) ;
 int sc_vtb_pointer (int *,int) ;
 int sc_vtb_putchar (int *,int ,int,int) ;
 int vga_flipattr (int,int ) ;

__attribute__((used)) static void
vga_txtdraw(scr_stat *scp, int from, int count, int flip)
{
 vm_offset_t p;
 int c;
 int a;

 if (from + count > scp->xsize*scp->ysize)
  count = scp->xsize*scp->ysize - from;

 if (flip) {
  for (p = sc_vtb_pointer(&scp->scr, from); count-- > 0; ++from) {
   c = sc_vtb_getc(&scp->vtb, from);
   a = sc_vtb_geta(&scp->vtb, from);
   a = vga_flipattr(a, TRUE);
   p = sc_vtb_putchar(&scp->scr, p, c, a);
  }
 } else {
  sc_vtb_copy(&scp->vtb, from, &scp->scr, from, count);
 }
}
