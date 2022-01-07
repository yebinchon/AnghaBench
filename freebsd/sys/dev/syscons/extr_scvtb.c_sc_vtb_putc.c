
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_4__ {scalar_t__ vtb_type; } ;
typedef TYPE_1__ sc_vtb_t ;


 scalar_t__ VTB_FRAMEBUFFER ;
 scalar_t__ sc_vtb_pointer (TYPE_1__*,int) ;
 int writew (scalar_t__,int) ;

void
sc_vtb_putc(sc_vtb_t *vtb, int at, int c, int a)
{

 if (vtb->vtb_type == VTB_FRAMEBUFFER)
  writew(sc_vtb_pointer(vtb, at), a | c);
 else

  *(u_int16_t *)sc_vtb_pointer(vtb, at) = a | c;
}
