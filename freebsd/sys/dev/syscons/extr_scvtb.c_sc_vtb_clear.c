
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vtb_type; int vtb_size; } ;
typedef TYPE_1__ sc_vtb_t ;


 scalar_t__ VTB_FRAMEBUFFER ;
 int fillw (int,void*,int ) ;
 int fillw_io (int,scalar_t__,int ) ;
 scalar_t__ sc_vtb_pointer (TYPE_1__*,int ) ;

void
sc_vtb_clear(sc_vtb_t *vtb, int c, int attr)
{

 if (vtb->vtb_type == VTB_FRAMEBUFFER)
  fillw_io(attr | c, sc_vtb_pointer(vtb, 0), vtb->vtb_size);
 else

  fillw(attr | c, (void *)sc_vtb_pointer(vtb, 0), vtb->vtb_size);
}
