
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vtb_size; scalar_t__ vtb_type; } ;
typedef TYPE_1__ sc_vtb_t ;


 scalar_t__ VTB_FRAMEBUFFER ;
 int fillw (int,void*,int) ;
 int fillw_io (int,scalar_t__,int) ;
 scalar_t__ sc_vtb_pointer (TYPE_1__*,int) ;

void
sc_vtb_erase(sc_vtb_t *vtb, int at, int count, int c, int attr)
{
 if (at + count > vtb->vtb_size)
  count = vtb->vtb_size - at;

 if (vtb->vtb_type == VTB_FRAMEBUFFER)
  fillw_io(attr | c, sc_vtb_pointer(vtb, at), count);
 else

  fillw(attr | c, (void *)sc_vtb_pointer(vtb, at), count);
}
