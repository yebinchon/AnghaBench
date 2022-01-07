
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_3__ {int vtb_type; int vtb_flags; scalar_t__ vtb_buffer; scalar_t__ vtb_tail; scalar_t__ vtb_size; scalar_t__ vtb_rows; scalar_t__ vtb_cols; } ;
typedef TYPE_1__ sc_vtb_t ;


 int M_DEVBUF ;
 int VTB_ALLOCED ;
 int VTB_INVALID ;


 int free (void*,int ) ;

void
sc_vtb_destroy(sc_vtb_t *vtb)
{
 vm_offset_t p;

 vtb->vtb_cols = 0;
 vtb->vtb_rows = 0;
 vtb->vtb_size = 0;
 vtb->vtb_tail = 0;

 p = vtb->vtb_buffer;
 vtb->vtb_buffer = 0;
 switch (vtb->vtb_type) {
 case 129:
 case 128:
  if ((vtb->vtb_flags & VTB_ALLOCED) && (p != 0))
   free((void *)p, M_DEVBUF);
  break;
 default:
  break;
 }
 vtb->vtb_flags = 0;
 vtb->vtb_type = VTB_INVALID;
}
