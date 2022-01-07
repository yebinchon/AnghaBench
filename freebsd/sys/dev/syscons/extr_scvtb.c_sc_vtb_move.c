
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
 scalar_t__ sc_vtb_pointer (TYPE_1__*,int) ;

void
sc_vtb_move(sc_vtb_t *vtb, int from, int to, int count)
{
 if (from + count > vtb->vtb_size)
  count = vtb->vtb_size - from;
 if (to + count > vtb->vtb_size)
  count = vtb->vtb_size - to;
 if (count <= 0)
  return;

 if (vtb->vtb_type == VTB_FRAMEBUFFER)
  bcopy_io(sc_vtb_pointer(vtb, from),
    sc_vtb_pointer(vtb, to), count*sizeof(u_int16_t));
 else

  bcopy((void *)sc_vtb_pointer(vtb, from),
        (void *)sc_vtb_pointer(vtb, to), count*sizeof(u_int16_t));
}
