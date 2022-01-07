
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int u_int16_t ;
struct TYPE_3__ {scalar_t__ vtb_type; } ;
typedef TYPE_1__ sc_vtb_t ;


 scalar_t__ VTB_FRAMEBUFFER ;
 int writew (scalar_t__,int) ;

vm_offset_t
sc_vtb_putchar(sc_vtb_t *vtb, vm_offset_t p, int c, int a)
{

 if (vtb->vtb_type == VTB_FRAMEBUFFER)
  writew(p, a | c);
 else

  *(u_int16_t *)p = a | c;
 return (p + sizeof(u_int16_t));
}
