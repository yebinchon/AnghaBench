
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* vm_offset_t ;
typedef int u_int16_t ;
struct TYPE_4__ {int vtb_type; int vtb_cols; int vtb_rows; int vtb_size; scalar_t__ vtb_buffer; scalar_t__ vtb_flags; scalar_t__ vtb_tail; } ;
typedef TYPE_1__ sc_vtb_t ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_WAITOK ;
 scalar_t__ VTB_ALLOCED ;



 scalar_t__ VTB_VALID ;
 int bzero (void*,int) ;
 int malloc (int,int ,int ) ;
 scalar_t__ sc_vtb_pointer (TYPE_1__*,int ) ;

void
sc_vtb_init(sc_vtb_t *vtb, int type, int cols, int rows, void *buf, int wait)
{
 vtb->vtb_flags = 0;
 vtb->vtb_type = type;
 vtb->vtb_cols = cols;
 vtb->vtb_rows = rows;
 vtb->vtb_size = cols*rows;
 vtb->vtb_buffer = 0;
 vtb->vtb_tail = 0;

 switch (type) {
 case 129:
 case 128:
  if ((buf == ((void*)0)) && (cols*rows != 0)) {
   vtb->vtb_buffer =
    (vm_offset_t)malloc(cols*rows*sizeof(u_int16_t),
          M_DEVBUF,
          (wait) ? M_WAITOK : M_NOWAIT);
   if (vtb->vtb_buffer != 0) {
    bzero((void *)sc_vtb_pointer(vtb, 0),
          cols*rows*sizeof(u_int16_t));
    vtb->vtb_flags |= VTB_ALLOCED;
   }
  } else {
   vtb->vtb_buffer = (vm_offset_t)buf;
  }
  vtb->vtb_flags |= VTB_VALID;
  break;

 case 130:
  vtb->vtb_buffer = (vm_offset_t)buf;
  vtb->vtb_flags |= VTB_VALID;
  break;

 default:
  break;
 }
}
