
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_6__ {scalar_t__ vtb_type; int vtb_size; int vtb_tail; } ;
typedef TYPE_1__ sc_vtb_t ;


 scalar_t__ VTB_FRAMEBUFFER ;
 scalar_t__ VTB_RINGBUFFER ;
 int bcopy (void*,void*,int) ;
 int bcopy_fromio (scalar_t__,scalar_t__,int) ;
 int imin (int,int) ;
 scalar_t__ sc_vtb_pointer (TYPE_1__*,int) ;
 int vtb_wrap (TYPE_1__*,int,int) ;

void
sc_vtb_append(sc_vtb_t *vtb1, int from, sc_vtb_t *vtb2, int count)
{
 int len;

 if (vtb2->vtb_type != VTB_RINGBUFFER)
  return;

 while (count > 0) {
  len = imin(count, vtb2->vtb_size - vtb2->vtb_tail);

  if (vtb1->vtb_type == VTB_FRAMEBUFFER)
   bcopy_fromio(sc_vtb_pointer(vtb1, from),
         sc_vtb_pointer(vtb2, vtb2->vtb_tail),
         len*sizeof(u_int16_t));
  else

   bcopy((void *)sc_vtb_pointer(vtb1, from),
         (void *)sc_vtb_pointer(vtb2, vtb2->vtb_tail),
         len*sizeof(u_int16_t));
  from += len;
  count -= len;
  vtb2->vtb_tail = vtb_wrap(vtb2, vtb2->vtb_tail, len);
 }
}
