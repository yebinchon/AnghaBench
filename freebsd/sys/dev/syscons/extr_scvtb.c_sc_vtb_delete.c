
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_4__ {int vtb_size; scalar_t__ vtb_type; } ;
typedef TYPE_1__ sc_vtb_t ;


 scalar_t__ VTB_FRAMEBUFFER ;
 int bcopy (void*,void*,int) ;
 int bcopy_io (scalar_t__,scalar_t__,int) ;
 int fillw (int,void*,int) ;
 int fillw_io (int,scalar_t__,int) ;
 scalar_t__ sc_vtb_pointer (TYPE_1__*,int) ;

void
sc_vtb_delete(sc_vtb_t *vtb, int at, int count, int c, int attr)
{
 int len;

 if (at + count > vtb->vtb_size)
  count = vtb->vtb_size - at;
 len = vtb->vtb_size - at - count;
 if (len > 0) {

  if (vtb->vtb_type == VTB_FRAMEBUFFER)
   bcopy_io(sc_vtb_pointer(vtb, at + count),
     sc_vtb_pointer(vtb, at),
     len*sizeof(u_int16_t));
  else

   bcopy((void *)sc_vtb_pointer(vtb, at + count),
         (void *)sc_vtb_pointer(vtb, at),
         len*sizeof(u_int16_t));
 }

 if (vtb->vtb_type == VTB_FRAMEBUFFER)
  fillw_io(attr | c, sc_vtb_pointer(vtb, at + len),
    vtb->vtb_size - at - len);
 else

  fillw(attr | c, (void *)sc_vtb_pointer(vtb, at + len),
        vtb->vtb_size - at - len);
}
