
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_5__ {scalar_t__ vtb_type; } ;
typedef TYPE_1__ sc_vtb_t ;


 scalar_t__ VTB_FRAMEBUFFER ;
 int bcopy (void*,void*,int) ;
 int bcopy_fromio (scalar_t__,scalar_t__,int) ;
 int bcopy_toio (scalar_t__,scalar_t__,int) ;
 scalar_t__ sc_vtb_pointer (TYPE_1__*,int) ;

void
sc_vtb_copy(sc_vtb_t *vtb1, int from, sc_vtb_t *vtb2, int to, int count)
{


 if (vtb2->vtb_type == VTB_FRAMEBUFFER)
  bcopy_toio(sc_vtb_pointer(vtb1, from),
      sc_vtb_pointer(vtb2, to),
      count*sizeof(u_int16_t));
 else if (vtb1->vtb_type == VTB_FRAMEBUFFER)
  bcopy_fromio(sc_vtb_pointer(vtb1, from),
        sc_vtb_pointer(vtb2, to),
        count*sizeof(u_int16_t));
 else

  bcopy((void *)sc_vtb_pointer(vtb1, from),
        (void *)sc_vtb_pointer(vtb2, to),
        count*sizeof(u_int16_t));
}
